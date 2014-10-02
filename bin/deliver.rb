#!/usr/bin/env ruby
require 'rubygems'
require 'twilio-ruby'

# put your own credentials here
account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

message = "Draw #{['a horse', 'an elephant', 'your dream house', 'your spirit animal'].sample }"

@client.account.messages.create({
  :from => ENV['TWILIO_FROM'],
  :to => ENV['TWILIO_TO'],
  :body => message,
})
