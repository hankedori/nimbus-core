class Api::VerificationDocumentsController < ApplicationController
  before_action :authenticate_api_user!

  def index
    @documents = current_api_user.verification_documents.all
  end

  def create
    @document = current_api_user.verification_documents.create!(document_params)
  end

  def destroy
    @document = VerificationDocument.find(document_params[:id]).destroy
  end

  def document_params
    params.permit(:verification_type, :verification_url, :id)
  end
end
