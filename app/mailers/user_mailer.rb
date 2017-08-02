class UserMailer < ApplicationMailer
	default from: "blue.atabey@gmail.com"

	def contact_form(email, name, message)
		@message = message
		mail(from: email,
				 to: 'blue.atabey@gmail.com',
				 subject: "A new contact form message from #{name}")
	end			 	
end
