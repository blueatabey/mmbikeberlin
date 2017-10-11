class PaymentsController < ApplicationController

def create
	@product = Product.find(params[:product_id])
	if user_signed_in?
		@user = current_user
	else
		redirect_to new_user_registration_path
	end		
	token = params[:stripeToken]

	begin
		charge = Stripe::Charge.create(
			:amount => (@product.price * 100).to_i,
			:currency => "eur",
			:source => token,
			:description => params[:stripeEmail]
		)
			
	if charge.paid
		Order.create(
			product_id: @product_id,
			user_id: @user_id,
			total: @product.price)
	end

	rescue Stripe::CardError => e	
		body = e.json_body
		err = body[:error]
		flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
	
	end

	redirect_to create
	end
end