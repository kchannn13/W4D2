class Employee
  attr_accessor :boss, :salary, :title 

  def initialize(name, title, salary, boss = nil)#, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end
end



class Manager < Employee
  attr_accessor :employees

  # def initialize(employees)
  #   @employees = []
  #   super

  # end
    def initialize(name, title, salary, boss = nil)
    @employees = []
    super

  end



  def bonus(multiplier)
    sum = 0
    @employees.each do |person|
      sum += person.salary
    end
    return sum * multiplier
    #@employees.salary.sum * multiplier
  end


end