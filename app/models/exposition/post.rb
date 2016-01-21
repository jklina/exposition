module Exposition
  class Post < ActiveRecord::Base
    include Concerns::Models::Post
  end
end
