require './test/test_helper'
require './modules/date_handler'
require './lib/employee'

class EmployeeTest < Minitest::Test
  def test_instantiation
    employee = Employee.new('5', 'Sally', 'Engineer', '2015-01-01', '2018-01-01')
    assert_instance_of Employee, employee
  end

  def test_attributes
    employee = Employee.new('5', 'Sally', 'Engineer', '2015-01-01', '2018-01-01')

    assert_equal Integer, employee.employee_id.class
    assert_equal 'Sally', employee.name
    assert_equal 'Engineer', employee.role
    assert_instance_of Date, employee.start_date
    assert_instance_of Date, employee.end_date
  end
end
