require 'rails_helper'

describe UsersController, type: :controller do
	
	before do
	# @user1 = User.create!(first_name: "User", last_name: "One", email: "user1@gmail.com", password: "user1bike123")
	@user = FactoryGirl.create(:user)
	# @user2 = User.create!(first_name: "User", last_name: "Two", email: "user2@gmail.com", password: "user2ike123")
	end
	
describe 'GET #show' do
	context 'User is logged in' do
	before do
		sign_in @user
	end
	
	it 'loads correct user details' do
		get :show, params: { id: @user.id }
		expect(response).to be_success
		expect(response).to have_http_status(200)
		expect(assigns(:user)).to eq @user
	end
	
#	it 'cant access other users show page' do
#		get :show, params: { id: @user.id }	
#		expect(response).to redirect_to(root_path)
#	end	
end

	context 'when a user is not logged in' do
    it 'redirects to login' do
			get :show, params: { id: @user.id}
			expect(response).to redirect_to(new_user_session_path)
		end	
end
end
end