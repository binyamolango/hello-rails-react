class Api::V1::MessagesController < ApplicationController
  before_action :set_default_format

  def index
    @message = Message.order('RANDOM()').first
  end

  private

  def set_default_format
    request.format = :json
  end
end