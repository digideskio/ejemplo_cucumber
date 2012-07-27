class SubscriptionsController < ApplicationController

  def new
    @channel = Channel.find_by_name(params[:name])

    @subscription = @channel.subscriptions.build
  end

  def create
    @channel = Channel.find(params[:subscription][:channel_id])

    @subscription =
      @channel.subscriptions.create(
        email: params[:subscription][:email]
      )
  end
end
