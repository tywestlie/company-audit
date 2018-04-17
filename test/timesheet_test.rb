require './test/test_helper'
require './modules/date_handler'
require './lib/timesheet'

class TimesheetTest < Minitest::Test

  def test_instantiation
    timesheet = TimeSheet.new('5','7','2015-01-01','120')
    assert_instance_of TimeSheet, timesheet
  end

  def test_attributes
    timesheet = TimeSheet.new('5','7','2015-01-01','120')

    assert_equal Integer, timesheet.employee_id.class
    assert_equal Integer, timesheet.project_id.class
    assert_instance_of Date, timesheet.date
    assert_equal Integer, timesheet.minutes.class
  end


end
