class MessagesController < ApplicationController
	def create
		message = Message.new(message_params)

		if message.save
			redirect_to :back
		else
			flash[:errors] = message.errors.full_messages
			redirect_to :back
		end
	end

	def destroy
		comments = Comment.find_by(message_id: params[:id])
		comments.destroy
		message = Message.find(params[:id])
		message.destroy
		redirect_to :back
	end

	private
	def message_params
 		params.require(:message).permit(:content, :user_id)
 	end
end