class Employee
  attr_accessor :boss #:title, :salary, 

  def initialize(name, title, salary)#, boss)
    @name = name
    @title = title
    @salary = salary
    @boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end
end



class Manager < Employee
  attr_accessor :employees

  def initialize(employees)
    @employees = []
    #super

  end

  def bonus(multiplier)
    @employees.salary.sum * multiplier
  end


end