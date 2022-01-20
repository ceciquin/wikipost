class WelcomeController < ApplicationController
  def index
    @wikipost = Wikipost.all
  end
  def about
  end
end
