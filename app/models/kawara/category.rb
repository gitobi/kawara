require 'awesome_nested_set'

module Kawara
  class Category < ActiveRecord::Base
    acts_as_nested_set

    has_many :articles

    validates :name, presence: true
  end
end
