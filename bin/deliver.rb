#!/usr/bin/env ruby
require 'rubygems'
require 'twilio-ruby'

ideas = File.expand_path('../../ideas.txt', __FILE__)
message = "Drawtime! Draw #{File.readlines(ideas).sample}."

account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']

@client = Twilio::REST::Client.new account_sid, auth_token
@client.account.messages.create({
  :from => ENV['TWILIO_FROM'],
  :to => ENV['TWILIO_TO'],
  :body => message,
})
