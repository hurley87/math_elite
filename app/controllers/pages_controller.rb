class PagesController < ApplicationController
  def home
  	@stripe_key = Rails.configuration.stripe[:publishable_key]
  end
end
