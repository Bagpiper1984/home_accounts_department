# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
HomeAccountsDepartment::Application.initialize!

Time::DATE_FORMATS[:my_date_format] = "%d.%m.%Y"
