FactoryGirl.define do
	
	factory :product do
		name "Pargo Bike"
		description "Pet Cargo Bike"
		image_url "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPTmAnk0ivEcToILnsvUNLLGcW9RZCepLamiKuoGC09wqlo1rdAQ"
		colour "Blue & Black"
		price "790"
	end
	
	factory :comment do
		rating "5"	
		body "Wonderful bike - very useful!"
	end	
end