class Lead < ApplicationRecord

  def self.create_lead(params)
    lead = self.new
    lead.raw_data = params
    lead.assign_attributes params.slice('uid', 'address')

    lead.save
    lead
  rescue StandardError => e
    logger.warn m: "Error creating lead", error: e.message, backtrace: e.backtrace
    nil
  end

  def extract_address_line
    raw_data['address'].to_s.split(',')[0].to_s.strip
  end

  def extract_postal_code
    raw_data['address'].to_s.split(',')[2].to_s.strip
  end

  def extract_city
    raw_data['address'].to_s.split(',')[1].to_s.strip
  end
end
