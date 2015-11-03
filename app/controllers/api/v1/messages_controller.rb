class Api::V1::MessagesController < ApplicationController
  before_action :find_message, only: [:show, :update, :destroy]

  def find_message
    @message = Message.find params[:id]
  end

  def index
    @messages = Message.all
    render json: @messages, status: :ok
  end

  def create
    @message = Message.new message_params
    if @message.save
      render json: @message, status: :ok
    else
      render json: @message.errors, status: :bad_request
    end
  end

  def show
    render json: @message, status: :ok
  end

  def update
    if @message.update message_params
      render json: @message, status: :ok
    else
      render json: @message.errors, status: :bad_request
    end
  end

  def destroy
    @message.destroy
    render nothing: true, status: :no_content
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :phone, :body)
  end
end
