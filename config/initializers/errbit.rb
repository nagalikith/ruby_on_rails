Airbrake.configure do |config|
    config.api_key = 'e04a7ae43cb5b6657519d2afdd82739a'
    config.host    = 'errbit.hut.shefcompsci.org.uk'
    config.port    = 443
    config.secure  = config.port == 443
  end