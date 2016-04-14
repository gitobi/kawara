module Kawara
  class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable,
           :confirmable, :lockable, :timeoutable

    belongs_to :role
    before_create :set_default_role

    private
    def set_default_role
      self.role ||= Role.default_role
    end
  end
end
