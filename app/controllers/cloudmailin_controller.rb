class CloudmailinController < ApplicationController
  
  skip_before_filter :verify_authenticity_token
  
  # POST /cloudmailin
  def create
    @email = Email.new
    
    @email.to = params[:headers]['To']
    @email.from = params[:headers]['From']
    @email.subject = params[:headers]['Subject']
    @email.message = params[:plain]

    if @email.save
      render text: 'success', status: :ok
    else
      render text: @email.errors, status: :unprocessable_entity
    end
  end
  
end
