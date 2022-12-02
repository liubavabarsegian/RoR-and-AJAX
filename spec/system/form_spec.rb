# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Mersenne', type: 'system' do
  it 'finds welcome' do
    visit root_path
    expect(page).to have_text('Welcome to Rails!')
  end

  context 'when input is not empty' do
    it 'calculates the result' do
      visit root_path
      click_button 'Start the program'
      fill_in :num, with: 100
      click_button 'Найти числа Мерсена до n'
      expect(find('#mersenne-3')).to have_text('31')
    end
  end
  context 'when input is empty' do
    it 'expects to see nothing' do
      visit root_path
      click_button 'Start the program'
      click_button 'Найти числа Мерсена до n'
      expect(page).not_to have_text('Result:')
    end
  end
end
