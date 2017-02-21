class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    # cookies.encrypted['receiver_id'] = current_user&.id
  end
end
