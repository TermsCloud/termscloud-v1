class MailchimpService
  def initialize
    @gibbon = Gibbon::API.new(ENV['MAILCHIMP_API_KEY'])
    @list_id = ENV['MAILCHIMP_LIST_ID']
  end

  def subscribe_user(user)
    @gibbon.lists.subscribe(base_details(user))
  end

  private

  def base_details(user)
    {
      id: @list_id,
      email: { email: user.email},
      merge_vars: {
        FNAME: user.firstname.capitalize,
        LNAME: user.lastname.capitalize,
      },
      double_optin: false,
      update_existing: true
    }
  end
end
