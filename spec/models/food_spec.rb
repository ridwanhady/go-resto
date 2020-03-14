require "rails_helper"

RSpec.describe Food, type: :model do
  describe "Food Model" do
    context "invalid attributes" do
      before do
        @params = {
          name: "Meatballs",
          description: "A round shaped meat",
          price: 100000
        }
      end

      it "should fail when name is empty" do
        expect(Food.new(@params.slice(:description, :price))).to_not be_valid
      end

      it "should fail when description is empty" do
        expect(Food.new(@params.slice(:name, :price))).to_not be_valid
      end
    end
  end
end
