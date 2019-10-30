module EmailReportable
  def send_report
    p "about to send the report"
    p "just sent the report"
  end
end


class Employee
  attr_reader :first_name, :last_name, :salary, :active

  attr_writer :first_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @active = input_options[:active]
    @salary = input_options[:salary]
  end

  def print_info
    p "#{first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee1 = Employee.new({
  :first_name => "Majora",
  :last_name => "Carter",
  :active => true,
  :salary => 80000
})
# employee1.print_info

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", active: false, salary: 70000)


# employee2.print_info

# employee1.give_annual_raise
# employee1.print_info


# employee1.first_name = "brian"

# employee1.print_info



class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  include EmailReportable

  def give_all_raises
    p "giving the people the raises"
    # get the employees
    i = 0
    while i < @employees.length
      @employees[i].give_annual_raise
      i += 1
    end
    # give the employees raises
  end

  def fire_all_employees
    p "about to fire everybody"
    @employees.each do |employee|
      employee.active = false
    end
  end

  def count_the_employees
    @employees.length
  end
end

manager1 = Manager.new(first_name: "Manny", last_name: "Mortez", active: true, salary: 100000, employees: [employee1, employee2])

manager1.print_info
manager1.give_annual_raise
manager1.print_info

manager1.send_report
p manager1.count_the_employees

manager1.give_all_raises
manager1.fire_all_employees
p manager1


# p "hello".class
# p 42.class
# p [].class
# p {}.class
# p employee1.class


# an intern is like an employee except it can also send reports

class Intern < Employee
  include EmailReportable
end

intern = Intern.new(first_name: "Ingrid", last_name: "Fallofferson", active: true, salary: 0)

intern.print_info

intern.send_report

# intern.fire_all_employees
