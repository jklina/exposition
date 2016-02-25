require 'rails_helper'
require "exposition/setup"

RSpec.describe Exposition::Setup do
  describe '#create_user' do
    it 'generates a new user when the proper options are provided' do
      options = {'attributes' => { name: 'johnny',
                              email: 'johnny@appleseed.com',
                              password: 'secret',
                              password_confirmation: 'secret' }
      }

      subject.options = options
      subject.create_user
      user = Exposition::User.last

      expect(user.name). to eq('johnny')
    end
  end

  it 'generates a useful error message when incorrectly used' do
      invalid_options = {'attributes' => { name: 'johnny',
                              password: 'secret',
                              password_confirmation: 'secret' }
      }

      subject.options = invalid_options

      expect { subject.create_user }.
        to raise_error(ActiveRecord::RecordInvalid)
  end
end
