module Kawara
  class Role < ActiveRecord::Base
    ROLES = {
      admin:  { id: 1, name: 'Admin'  }.freeze,
      editor: { id: 2, name: 'Editor' }.freeze,
      writer: { id: 3, name: 'Writer' }.freeze
    }.freeze

    has_many :users

    class << self
      def default_role
        admin
      end

      def admin
        find(ROLES[:admin][:id])
      end

      def editor
        find(ROLES[:editor][:id])
      end

      def writer
        find(ROLES[:writer][:id])
      end
    end
  end
end
