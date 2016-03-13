module Kawara
  class Config
    include Singleton
    include ActiveSupport::Configurable

    config_accessor :aws_access_key
    config_accessor :aws_secret_key
    config_accessor :aws_region do
      'ap-northeast-1'
    end
    config_accessor :aws_bucket

    config_accessor :aws, instance_writer: false
    def aws
      {
        access_key_id: config.aws_access_key,
        secret_access_key: config.aws_secret_key,
        region: config.aws_region,
        bucket: config.aws_bucket
      }
    end

    config_accessor :image_max_size do
      10.megabytes
    end
    config_accessor :cdn_host

  end
end
