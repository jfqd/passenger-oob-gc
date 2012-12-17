# Passenger OOB-GC

Run the Ruby Garbage Collection (GC) outside of the Passenger request cycle.

The original idea for this gem came from [Yuichi Tateno](http://rubyforge.org/pipermail/mongrel-unicorn/2011-October/001207.html) and [Eric Lindvall](http://stackoverflow.com/questions/6221942/is-there-an-easy-way-to-run-garbage-collection-outside-of-the-request-cycle-in-p).

## Installation

```
gem install passenger_oob_gc
```

## Usage

Add the following code to an 

```
if defined?(PhusionPassenger::Utils::UnseekableSocket)
  PassengerOobGC.install!
end
```

Use it on your on risk.

Copyright (c) 2012 Stefan Husch, qutic development.