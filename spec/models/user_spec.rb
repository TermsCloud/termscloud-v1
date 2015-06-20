require 'rails_helper'

describe User, type: :model do

  it 'should auto generate a password before validation' do
    u = User.new(firstname: 'Myles', lastname: 'CC', email: 'tech@termscloud.co.uk', website_url: 'www.asdf.com')
    expect(u.valid?).to be true
  end
end
