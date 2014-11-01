class ChargesController < ApplicationController
	def new
	end

	def create
	  # Amount in cents
	  @amount = 999

	  customer = Stripe::Customer.create(
	    :email => parmas[:stripeEmail],
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Edible Energy Customer',
	    :currency    => 'cad'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end
end
