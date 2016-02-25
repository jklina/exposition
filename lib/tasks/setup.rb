# Load associated Rails environment if there is a Rails environment
# require 'exposition/engine' if defined? ::Rails
require 'thor'

module Exposition
  class Setup < Thor
    desc 'create_user', 'creates an admin user'
    method_option :attributes,
      type: :hash,
      required: true,
      desc: 'specifies attributes for your user account. eg. name:Johnny email:john@exposition.com password:secret password_confirmation:secret'
    def create_user
      user_attributes = options.fetch('attributes')
      ::Exposition::User.create!(user_attributes)
    end
  end
end
