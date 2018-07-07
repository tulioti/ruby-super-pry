require 'pry'

#when using binding.pry
  # type 'c' or 'exit' to continue script execution
  # type 's' to step into next line
  # type 'p :line_num' to play a certain line
      #i.e. to execute line 8, type p 8
  # type 'exit!' to shut down pry.

# ENTER SANDBOX CODE BELOW:
# THEN EXECUTE IN TERMINAL: ruby sandbox.rb
# WRITE TESTS IN spec/sandbox_spec.rb
# RUN TESTS IN TERMINAL BY TYPING: rspec

class Foo
  def a()
    binding.pry
    yield self
  end

  def b()
    yield
  end

  def c()
    yield "Bar"
  end

  def d()
    yield 1, 2, "scuba"
  end

  def to_s()
    "A!"
  end
end

Foo.new.a {|x| puts x } #=> A!
# Foo.new.b {|x| puts x } #=> (a blank line, nil was yielded)
# Foo.new.c {|x| puts x } #=> Bar
# Foo.new.d {|x, y, z| puts z } #=> scuba
