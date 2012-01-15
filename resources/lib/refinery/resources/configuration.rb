module Refinery
  module Resources
    include ActiveSupport::Configurable

    config_accessor :dragonfly_insert_before, :dragonfly_secret, :max_file_size,
                    :pages_per_dialog, :pages_per_admin_index,
                    :s3_backend, :s3_bucket_name, :s3_region,
                    :s3_access_key_id, :s3_secret_access_key

    self.dragonfly_insert_before = 'ActionDispatch::Callbacks'
    self.dragonfly_secret = Refinery::Core.config.dragonfly_secret
    self.max_file_size = 52428800
    self.pages_per_dialog = 12
    self.pages_per_admin_index = 20

    self.s3_backend = Refinery::Core.config.s3_backend
    self.s3_bucket_name = ENV['S3_BUCKET']
    self.s3_access_key_id = ENV['S3_KEY']
    self.s3_secret_access_key = ENV['S3_SECRET']
  end
end