require_relative "cage"

class Zoo
  attr_reader :cages, :employees
  
  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    generate_cages
    @employees = []
  end

  def generate_cages 
    while @cages.length < 10
      @cages << Cage.new
    end
  end

  def add_employee(employee)
    employees << employee
  end

  def open?(date)
    if date >= @season_opening_date && date <= @season_closing_date
      return true
    else
      return false
    end
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return cage
      end
    end
    return "Your zoo is already at capacity!"
  end

  def visit 
    visit_string = ""

    @employees.each do |employee| 
      visit_string += "#{employee.greet}\n"
    end

    @cages.each do |cage| 
      if cage.empty? == false 
        visit_string += "#{cage.animal.speak}\n"
      end
    end

    return visit_string
  end
end