class ProviderController < ApplicationController
  def login
    provider = params[:provider]
    auth_hash = request.env['omniauth.auth']
    keys = {}
    %w(expires_at refresh_token token).each do |key|
      val = auth_hash.credentials.send(key)
      File.open("tmp/#{provider}_#{key}.txt", 'w') { |file| file.write(val) }
      keys["#{provider}_#{key}"] = val
    end
    cookies[provider] = keys.to_json
    redirect_to :root, notice: 'Signed in successfully'
  end
end
