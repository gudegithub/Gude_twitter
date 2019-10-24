class AutoController < ApplicationController

  require "twitter"

  def home
  end
  
  def twitter
    @user = Twitter::REST::Client.new do |config|
      config.consumer_key = params[:consumer_key]
      config.consumer_secret = params[:consumer_secret]
      config.access_token = params[:access_token]
      config.access_token_secret = params[:access_token_secret]
    end
    @word = params[:word]
    @number = params[:number].to_i

    if @user
      @user.search(@word).take(@number).each do |tweet|
        @user.favorite(tweet)
        sleep(60)
      end
    end
  end


end
