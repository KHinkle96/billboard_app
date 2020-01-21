require "rails_helper"

RSpec.describe User, type: :model do
    describe "validations" do
        it "requires the email" do
            should validate_presence_of :email
        end
    end
end
