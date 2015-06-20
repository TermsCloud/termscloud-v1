class Request < ActiveRecord::Base
  store_accessor :details, :website_terms_of_use, :aceeptable_use_policy, :privacy_and_cookies_policy, :other

  validates :business_name, presence: true
  validates :number_of_employees, presence: true
  validates :contact_number, presence: true

end
