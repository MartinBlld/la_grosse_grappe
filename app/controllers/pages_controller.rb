class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @grapevines = Grapevine.all
  end
end
