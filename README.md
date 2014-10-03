# Lunchtime Drawtime

Prompts via SMS for things to draw during lunch.

## Set up an app to send yourself prompts

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/ckundo/lunchtimedrawtime)

1. Create a [Twilio account](https://www.twilio.com/try-twilio)
2. Add your [Twilio credentials](https://www.twilio.com/user/account) to your new app.

    $ heroku config:add TWILIO_ACCOUNT_SID=<your Twilio acct sid> TWILIO_AUTH_TOKEN=<your Twilio auth token> TWILIO_FROM=<your Twilio from number> TWILIO_TO=<your mobile number>

3. Set [Heroku scheduler](https://scheduler.heroku.com/dashboard) to run at lunchtime daily.
4. Draw stuff!
5. Submit to [the Lunchtime Drawtime blog](http://lunchtimedrawtime.com).

## Contributing

Want to add some Drawtime ideas?

1. Fork the repo
1. Add new ideas to ideas.txt, one per line.
1. Submit a pull request
