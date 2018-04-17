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
      employee = Employee.new(data)
      @employees << employee
    end
  end

  # def load_projects(filename)
  #   CSV.foreach(filename, headers:true, header_converters: :symbol) do |data|
  #     project = Project.new(data)
  #     @projects[project.project_id] = project
  # end
  #
  # def load_timesheets(filename)
  #   CSV.foreach(filename, headers:true, header_converters: :symbol) do |data|
  #     timesheet = TimeSheet.new(data)
  #     @timesheets[timesheet.employee_id] = timesheet
  # end

end
