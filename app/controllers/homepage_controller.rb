class HomepageController < ApplicationController
  def index
    @user = User.new
  end

  def register_user
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      sign_in(@user)
      flash[:success] = 'Thank you for signing up! Please fill out the form below to get started.'
      redirect_to get_started_path and return 
    end
    render :index
  end

  def get_started
    @form = GettingStartedForm.new
  end

  def submit_getting_started
    @form = GettingStartedForm.new(getting_started_params)
    if @form.valid?
      @form.user = current_user 
      @form.save
    else 
      render :get_started
    end
  end

  def contact 

  end

  def send_contact
    ContactMailer.contact_form(params[:contact_form]).deliver
    flash[:success] = 'Message sent. We\'ll be in touch soon.'
    render :contact
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :website_url, :terms)
  end

  def getting_started_params
    params.require(:getting_started_form).permit(:business_name, :number_of_employees, :phone, :website_terms_of_use, :acceptable_use_policy, :privacy_and_cookies_policy, :other)
  end
end
