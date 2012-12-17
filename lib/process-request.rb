module PassengerOobGC
  def self.install!
    PhusionPassenger::Utils::UnseekableSocket.send :include, self
    GC.disable
  end

  def self.included(base)
    base.send :alias_method_chain, :close, :gc
  end

  def close_with_gc
    begin
      @socket.close
    rescue => e
      raise annotate(e)
    ensure
      t = Benchmark.realtime do
        enabled = GC.enable
        GC.start
        GC.disable if enabled
      end
      Rails.logger.debug("[PassengerOobGC] closing socket, GC: %.1fms" % [t*1000])
    end
  end

end
