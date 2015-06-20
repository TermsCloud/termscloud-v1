class User < ActiveRecord::Base
  include Clearance::User
  before_validation :generate_random_password


  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :website_url, presence: true
  validates :terms, presence: true

  def generate_random_password
    self.password ||= Faker::Internet.password
  end
end
