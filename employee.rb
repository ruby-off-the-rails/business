# employee has first name, last name, active status, salary

# "Majora Carter makes $80000 per year."

# array
# employee1 = ["Marjora", "Carter", true, 80000]
# employee2 = ["Danilo", "Campos", false, 70000]

# p employee1[0] + " " + employee1[1] + " makes $" + employee1[3].to_s + " per year."

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[3]} per year."

# # hash
# employee1 = {"first_name" => "Majora", "last_name" => "Carter", "active" => true, "salary" => 80000}

# employee2 = {:first_name => "Danilo", :last_name => "Campos", :active => false, :salary => 70000}

# # fancy js syntax
# # employee2 = {first_name: "Danilo", last_name: "Campos", active: false, salary: 70000}


# p "#{employee1["first_name"]} #{employee1['last_name']} makes $#{employee1['salary']} per year."

# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."
# p "#{employee1}"

# class

class Employee
  attr_reader :first_name, :last_name, :salary, :active

  attr_writer :first_name
  # getter/reader
  # def first_name
  #   @first_name
  # end

  # setter/writer
  # def first_name=(input_first_name)
  #   @first_name = input_first_name
  # end

  def last_name
    @last_name
  end

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
employee1.print_info

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", active: true, salary: 70000)


employee2.print_info

employee1.give_annual_raise
employee1.print_info


employee1.first_name = "brian"

employee1.print_info
