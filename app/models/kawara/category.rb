require 'awesome_nested_set'

module Kawara
  class Category < ActiveRecord::Base
    extend FriendlyId
    friendly_id :name, use: :slugged

    acts_as_nested_set

    has_many :articles

    validates :name, presence: true

    delegate :latest, to: :articles, prefix: true
  end
end
