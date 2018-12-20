require 'rails_helper'

RSpec.describe LeadsController, type: :controller do

  let(:input) do
    {
      "lead"=>
   {"address"=>"Zimmer 551 Albrecht-Haushofer-Str. 917, Miraland, 42521",
    "contact"=>
     {"gender"=>"male",
      "full_name"=>"Rick Sanchez",
      "email_address"=>"roycemurazik@witting.net",
      "phone"=>"(01609) 4087522"},
    "id"=>299890,
    "trade_id"=>7,
    "details"=>
     {"project_deadline"=>"So schnell wie möglich",
      "project_surface"=>"150",
      "project_height"=>"220",
      "project_place"=>"Innenwand"},
    "closed_at"=>"2018-12-14T09:58:58.000+01:00",
    "expiration_date"=>"2018-12-15T09:55:22.000+01:00",
    "lost_at"=>"null",
    "created_at"=>"2018-12-14T09:55:22.000+01:00",
    "updated_at"=>"2018-12-14T09:58:58.000+01:00",
    "order_type"=>"null",
    "comment"=>"",
    "uid"=>401081,
    "user_type"=>"null",
    "request_type"=>"null",
    "category"=>"malerorg",
    "rejected_at"=>"null",
    "partner_id"=>"null",
    "lost_reason"=>"null",
    "partner_ids"=>[],
    "pics"=>[],
    "user_picked_account_id"=>"null",
    "service_performed"=>"null",
    "cipid"=>"null",
    "specialisation_id"=>434}
    }
  end

  describe 'POST / ' do
    render_views

    it 'create new lead in DB' do
      expect { post :create, params: input, format: :json }.to change { Lead.count }
    end

    it 'return new format in response' do
      response = post :create, params: input, format: :json
      response = JSON.parse(response.body.to_s)

      expect(response).to include('address_attributes' => {
        "line_1" => "Zimmer 551 Albrecht-Haushofer-Str. 917",
        "postal_code" => "42521",
        "city" => "Miraland"
      })
    end

    it 'returns error when data is invalid' do
    end

    it 'sends email when data is invalid' do
      expect { post :create, params: {}, format: :json }.to change { LeadMailer.deliveries.count }
    end
  end

  describe 'GET /' do
    it 'returns empty list when there are no data' do
    end

    it 'returns new formats for old submissions' do
    end
  end

end
