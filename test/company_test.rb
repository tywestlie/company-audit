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
    company_employees = company.load_employees('./data/employees.csv')

    assert_equal "Susan Smith", company.employees.first.name
  end

  def test_load_projects
    company = Company.new
    company_projects = company.load_projects('./data/projects.csv')

    assert_equal "Widgets", company.projects.first.name
  end

  def test_load_timesheets
    company = Company.new
    company_projects = company.load_timesheets('./data/timesheets.csv')

    assert_equal 1, company.timesheets.first.employee_id
  end
end
