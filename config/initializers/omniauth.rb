Rails.application.config.middleware.use OmniAuth::Builder do
  provider :timecrowd, ENV['TIMECROWD_KEY'], ENV['TIMECROWD_SECRET']
  provider :ruffnote, ENV['RUFFNOTE_KEY'], ENV['RUFFNOTE_SECRET']
end
OmniAuth.config.logger = Rails.logger
