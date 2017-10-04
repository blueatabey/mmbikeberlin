if Rails.env.production?
	Rails.configuration.stripe = {
		publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
		secret_key: ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		publishable_key: 'pk_test_kOyU6eSMsc0SrgRzoQzTcZsL',
		secret_key: 'sk_test_4xH5dmfAkiEKmtXShzQ1Ie8b'
	}	
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]	