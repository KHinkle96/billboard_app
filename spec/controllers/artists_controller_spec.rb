require "rails_helper"
require 'rspec/rails'
require 'devise'

RSpec.configure do |config|
    config.include Devise::Test::ControllerHelpers, type: :controller
  end

RSpec.describe ArtistsController, type: :controller do 
    describe "new" do
        it "sets a new artist object" do
            get :newz
            expect(assigns(:artist)).to be_a Artist 
        end
    end
end