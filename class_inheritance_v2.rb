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
  attr_accessor :employees, :salary

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
    empl = @employees.dup
    
    until empl.empty?
      empl.each do |person|
        #empl << person
        sum += person.salary
        empl.shift
        
        empl += person.employees if person.is_a?(Manager)
      end
    end
    return sum * multiplier
  end

end