require './test/test_helper'
require './modules/date_handler'
require './lib/project'

class ProjectTest < Minitest::Test

  def test_instantiation
    project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

    assert_instance_of  Project, project
  end

  def test_takes_attributes
    project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

    assert_equal Integer, project.project_id.class
    assert_equal 'Widget Maker', project.name
    assert_instance_of Date, project.start_date
    assert_instance_of Date, project.end_date
  end

end
