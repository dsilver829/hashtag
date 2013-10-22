require 'yaml'

twitter_data = YAML::load(ERB.new(IO.read(File.join(Rails.root, 'config', 'twitter.yml'))).result)
TWITTER_CONFIG = HashWithIndifferentAccess.new(twitter_data)

Twitter.configure do |config|
  config.consumer_key = TWITTER_CONFIG[:consumer_key]
  config.consumer_secret = TWITTER_CONFIG[:consumer_secret]
  config.oauth_token = TWITTER_CONFIG[:oauth_token]
  config.oauth_token_secret = TWITTER_CONFIG[:oauth_token_secret]
end
