require './modules/date_handler'
class Employee

  attr_reader :employee_id,
              :name,
              :role,
              :start_date,
              :end_date

  def initialize(employee_id, name, role, start_date, end_date)
    @employee_id = employee_id.to_i
    @name = name
    @role = role
    @start_date = DateHandler.string_to_date(start_date)
    @end_date = DateHandler.string_to_date(end_date)
  end

end
