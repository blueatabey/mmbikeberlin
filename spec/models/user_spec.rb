require 'rails_helper'

describe User, type: :model do 
	it "should not validate users without an email address" do
		@user = FactoryGirl.build(:user, email: "not_an_email")
		expect(@user).to_not be_valid

#	context "testing validations" do
#		it 'requires email address' do
#			expect(User.new(first_name: "Trixe", last_name: "Waverly", email: nil)).not_to be_valid
#		end	
	end		
end