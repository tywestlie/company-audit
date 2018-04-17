require 'csv'
require './modules/date_handler'
require './lib/employee'
require './lib/project'
require './lib/timesheet'

class Company
  attr_reader :employees,
              :projects,
              :timesheets

  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_employees(filename)
    CSV.foreach(filename) do |data|
      employee_id = data[0]
      name = data[1]
      role = data[2]
      start_date = data[3]
      end_date = data[4]
      employee = Employee.new(employee_id, name, role, start_date, end_date)
      @employees << employee
    end
  end

  def load_projects(filename)
    CSV.foreach(filename) do |data|
      project_id = data[0]
      name = data[1]
      start_date = data[2]
      end_date = data[3]
      project = Project.new(project_id, name, start_date, end_date)
      @projects << project
    end
  end

  def load_timesheets(filename)
    CSV.foreach(filename) do |data|
      employee_id = data[0]
      project_id = data[1]
      date = data[2]
      minutes = data[3]
      timesheet = TimeSheet.new(employee_id, project_id, date, minutes)
      @timesheets << timesheet
    end
  end
end
