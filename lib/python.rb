class Python
  include Reptile

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def speak
   return "SSSSssssss..."
  end
end

