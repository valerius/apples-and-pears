class HomeController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped

  def show
    # This action renders the home page with links to apples and pears
  end
end
