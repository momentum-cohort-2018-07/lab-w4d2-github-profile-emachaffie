class ProfileController < ApplicationController

require 'httparty'

  def index
    @liz_info = HTTParty.get ("https://api.github.com/users/emachaffie")
    @repos = HTTParty.get ("https://api.github.com/users/emachaffie/repos?sort=updated")
  end
end