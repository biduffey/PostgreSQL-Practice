from slackclient import SlackClient
import datetime as dt


token = "<INSERT_TOKEN_HERE"      # found at https://api.slack.com/web#authentication
sc = SlackClient(token)

sc.api_call(
  "chat.postMessage",
  channel="bens-test",
  text="Hello from Python! :tada:"+str(dt.datetime.now())
  )
