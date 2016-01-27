Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://172.17.0.2:6379/1' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://172.17.0.2:6379/1' }
end
