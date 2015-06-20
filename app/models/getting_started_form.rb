class GettingStartedForm< ActiveRecord::Base
  belongs_to :user
  store_accessor :details, :website_terms_of_use, :acceptable_use_policy, :privacy_and_cookies_policy, :other

  validates :business_name, presence: true
  validates :number_of_employees, presence: true
  validates :phone, presence: true
end
