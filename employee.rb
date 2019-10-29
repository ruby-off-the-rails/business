# employee has first name, last name, active status, salary

# "Majora Carter makes $80000 per year."

# array
# employee1 = ["Marjora", "Carter", true, 80000]
# employee2 = ["Danilo", "Campos", false, 70000]

# p employee1[0] + " " + employee1[1] + " makes $" + employee1[3].to_s + " per year."

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[3]} per year."

# hash
employee1 = {"first_name" => "Majora", "last_name" => "Carter", "active" => true, "salary" => 80000}

employee2 = {:first_name => "Danilo", :last_name => "Campos", :active => false, :salary => 70000}

# fancy js syntax
# employee2 = {first_name: "Danilo", last_name: "Campos", active: false, salary: 70000}


p "#{employee1["first_name"]} #{employee1['last_name']} makes $#{employee1['salary']} per year."

p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."
# p "#{employee1}"

# class
