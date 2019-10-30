require './email_reportable'
require './employee.rb'
require './manager'
require './intern'

employee1 = Employee.new({
  :first_name => "Majora",
  :last_name => "Carter",
  :active => true,
  :salary => 80000
})
employee1.print_info

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", active: false, salary: 70000)


employee2.print_info

employee1.give_annual_raise
employee1.print_info


employee1.first_name = "brian"

employee1.print_info




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



intern = Intern.new(first_name: "Ingrid", last_name: "Fallofferson", active: true, salary: 0)

intern.print_info

intern.send_report

# intern.fire_all_employees
