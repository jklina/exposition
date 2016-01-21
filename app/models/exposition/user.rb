module Exposition
  class User < ActiveRecord::Base
    include Concerns::Models::User
  end
end
