class HomeController < ApplicationController
  before_action :authenticate_agent!

  def dashboard
  end

  def index
  end

  def play
  end
end
