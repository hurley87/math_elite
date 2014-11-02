class ChargesController < ApplicationController
	def new
	end

	def create
	  # Amount in cents
	  @amount = 999


	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :card  => params[:stripeToken],
	    :plan => 'SOCKS'
	  )

	  purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], 
    amount: params[:amount], description: 'You get one pair of cool socks a month!', currency: 'cad',
    customer_id: customer.id, product_id: 1, uuid: SecureRandom.uuid, 
    address: params[:address], city: params[:city], postal: params[:postal], country: params[:country])

    redirect_to purchase

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end
end
