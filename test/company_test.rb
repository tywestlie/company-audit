require 'csv'
require './test/test_helper'
require './modules/date_handler'
require './lib/company'
require './lib/project'
require './lib/employee'
require './lib/timesheet'

class CompanyTest < Minitest::Test

  def test_instantiation
    company = Company.new
    assert_instance_of Company, company
  end

  def test_empty_arrays
    company = Company.new

    assert_equal [], company.employees
    assert_equal [], company.projects
    assert_equal [], company.timesheets
  end

  def test_load_employees
    company = Company.new

end
