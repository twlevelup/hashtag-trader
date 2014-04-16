require 'turn'
require 'minitest/spec'
require 'minitest/autorun'

Turn.config do |c|
 # use one of output formats:
 # :outline  - turn's original case/test outline mode [default]
 # :progress - indicates progress with progress bar
 # :dotted   - test/unit's traditional dot-progress mode
 # :pretty   - new pretty reporter
 # :marshal  - dump output as YAML (normal run mode only)
 # :cue      - interactive testing
 c.format  = :pretty
 # turn on invoke/execute tracing, enable full backtrace
 c.trace   = false
 # use humanized test names (works only with :outline format)
 c.natural = true
end
