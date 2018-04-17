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
    CSV.open(filename, 'w') do |data|
      @employees << data
    end
  end
  #
  # def load_employees(filename)
  #   CSV.foreach(filename) do |data|
  #     employee_id = data[0]
  #     name = data[1]
  #     role = data[2]
  #     start_date = data[3]
  #     end_date = data[4]
  #     employee = Employee.new(employee_id, name, role, start_date, end_date)
  #     @employees << employee
  #   end


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
