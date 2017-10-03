FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do
		email 
		password "123456789"
		first_name "User"
		last_name "Example"
		admin false
	end

	factory :admin, class: User do
		email 
		password "qwertyuiop"
		first_name "Admin"
		last_name "Example"
		admin true
	end	

end