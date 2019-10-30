class Employee
  attr_reader :first_name, :last_name, :salary, :active

  attr_writer :first_name

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

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", active: true, salary: 70000)


# employee2.print_info

# employee1.give_annual_raise
# employee1.print_info


# employee1.first_name = "brian"

# employee1.print_info



class Manager < Employee
  def send_report
    p "about to send the report"
    p "just sent the report"
  end
end

manager1 = Manager.new(first_name: "Manny", last_name: "Mortez", active: true, salary: 100000)

manager1.print_info
manager1.give_annual_raise
manager1.print_info

manager1.send_report
