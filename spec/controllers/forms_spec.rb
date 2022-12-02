# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FormsController, type: 'controller' do
  describe 'GET result' do
    it 'has a 200 status code' do
      get :result
      expect(response.status).to eq(200)
    end
  end
  describe 'GET form' do
    it 'has a 200 status code' do
      get :form
      expect(response.status).to eq(200)
      assert_response :success
    end
  end

  it 'expects to see Mersenne\'s numbers' do
    get :result, params: { num: 150_000 }
    expect(assigns[:result_m]).to eq([3, 7, 31, 127, 8191, 131_071])
  end
end
