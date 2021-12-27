class ApplicationController < ActionController::Base

    def encode_token(payload, exp = 72.hours.from_now)
        payload[:exp] = exp.to_i
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

end
