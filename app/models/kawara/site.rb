require 'subdomain_validation'

module Kawara
  class Site < ActiveRecord::Base
    include ::SubdomainValidation

    has_many :categories,     dependent: :destroy
    has_many :articles,       dependent: :destroy
    has_many :tags,           dependent: :destroy
    has_many :article_images, dependent: :destroy
    has_many :meta_tags,      dependent: :destroy

    enum status: { closed: 0, opened: 10 }

    validates :name, subdomain: true, uniqueness: true
  end
end
