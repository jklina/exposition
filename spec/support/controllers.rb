# Dir[Rails.root.join('spec/support/controllers/*.rb')].each { |f| require f }
require_relative "./controllers/session_management"
require_relative "./controllers/pagination"

RSpec.configure do |config|
  config.include Controllers::SessionManagement, :type => :controller
  config.include Controllers::Pagination, :type => :controller
end
