task :send_message do
require 'twilio-ruby'

# put your own credentials here
account_sid = 'AC560eec0b431b58b5e755e3846e2ad8ac'
auth_token = '8c8ef919b1496b384cfcefaafe60e471'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token
    @client.api.account.messages.create(
  from: '+18017846386',
  to: '+16174581655',
  body: 'Your lucky number today is ' + rand(100).to_s
)
end
