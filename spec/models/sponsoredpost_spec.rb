require 'rails_helper'

RSpec.describe Sponsoredpost, type: :model do
  let(:sponsoredpost) { Sponsoredpost.create! }

  describe "attributes" do
    it "should respond to title" do
      expect(sponsoredpost).to respond_to(:title)
    end

    it "should respond to body" do
      expect(sponsoredpost).to respond_to(:body)
    end

    it "should respond to price" do
      expect(sponsoredpost).to respond_to(:price)
    end
  end
end
