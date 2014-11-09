class Update < ActiveRecord::Base
	belongs_to :user

  def send_text_message(user)
    twilio_sid = ENV["TWILIO_ACCOUNT_SID"]
    twilio_token = ENV["TWILIO_AUTH_TOKEN"]
    twilio_phone_number = ENV["TWILIO_PHONE_NUMBER"]

    @client = Twilio::REST::Client.new twilio_sid, twilio_token

      @client.account.messages.create(
        :body => 'making it happen.',
        :from => "#{twilio_phone_number}",
        :to => user.number
      )
  end

end
