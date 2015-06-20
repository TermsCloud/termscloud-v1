class HomepageController < ApplicationController
  def index
    @user = User.new
  end

  def get_started
    @getting_started_form = GettingStartedForm.new
  end
end
