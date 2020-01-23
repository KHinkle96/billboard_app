require "rails_helper"

RSpec.describe ArtistsController, type: :controller do 
    describe "new" do
        it "sets a new artist object" do
            get :new
            expect(assigns(:user)).to be_a Artist 
        end
    end