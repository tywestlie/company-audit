require './test/test_helper'
require './modules/date_handler'
require './lib/project'
require './lib/employee'
require './lib/timesheet'

class CompanyTest < Minitest::Test

  def test_instantiation
    company = Company.new
    assert_instance_of Company, company
  end

  def test_attributes
    company = Company.new
  end
end