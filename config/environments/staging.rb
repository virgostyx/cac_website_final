# frozen_string_literal: true
# config/environments/staging.rb
require_relative "production"

Rails.application.configure do
  config.require_master_key = true
end

