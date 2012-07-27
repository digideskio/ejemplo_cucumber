class SubscriptionsController < ApplicationController

  def new
    @channel = Channel.find_by_name(params[:name])
    if @channel
      @subscription = @channel.subscriptions.build
    else
      flash[:error] = t("messages.channel.doesnt_exist")
      render "error"
    end
  end

  def create
    @channel = Channel.find(params[:subscription][:channel_id])

    @subscription =
      @channel.subscriptions.create(
        email: params[:subscription][:email]
      )
  end
end
