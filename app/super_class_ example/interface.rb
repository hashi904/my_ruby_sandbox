require "./base.rb"

class Interface < Base
  def execute
    v = super
    puts v + 23
  end
end

if __FILE__ == $PROGRAM_NAME
  Interface.new.execute
end
