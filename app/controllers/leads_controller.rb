class LeadsController < ApplicationController

  def create
    parsed_params = lead_params
    @lead = Lead.create_lead(parsed_params) if parsed_params

    unless @lead
      render json: { error: 'TBD' }, status: 422
      LeadMailer.
      return
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:address, contact: {}, details: {})
  rescue StandardError => e
    logger.info m: 'Problem with params', error: e.message, backtrace: e.backtrace
    nil
  end
end
