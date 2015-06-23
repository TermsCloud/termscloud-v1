class User < ActiveRecord::Base
  include Clearance::User
  before_validation :generate_random_password
  after_create :add_to_mailchimp

  
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :website_url, presence: true
  validates :terms, presence: true

  def generate_random_password
    self.password ||= Faker::Internet.password
  end

  def add_to_mailchimp
    MailchimpService.new.subscribe_user(self)
  end
end
