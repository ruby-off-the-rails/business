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
