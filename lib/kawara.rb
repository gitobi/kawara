require 'kawara/engine'
require 'kawara/config'

require 'friendly_id'
require 'refile/rails'
require 'refile/mini_magick'
require "refile/s3"

module Kawara
  def self.config
    Config.instance
  end

  def self.configure
    yield config if block_given?

    if config.aws_access_key && config.aws_secret_key && config.aws_bucket
      Refile.cache = Refile::S3.new(prefix: "cache", max_size: config.image_max_size, **(config.aws))
      Refile.store = Refile::S3.new(prefix: "store", max_size: config.image_max_size, **(config.aws))
    end

    Refile.cdn_host = config.cdn_host if config.cdn_host
  end
end
