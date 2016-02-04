class NameData
  attr_accessor :name

  def initialize name
    @name = name
  end
end


class Greetings
  def initialize name
    @person = NameData.new name
  end

  def hello
    puts "Hello #{@person.name}! I am a computer."
  end
end



greet = Greetings.new('John Doe')
greet.hello