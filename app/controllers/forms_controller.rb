# frozen_string_literal: true

# class FormsController
class FormsController < ApplicationController
  include FormsHelper
  def form; end

  def result
    @input = params[:num].to_i
    @result_m = mersenne_to_n(@input)
    @p_result = @result_m.map { |n| Math.log(n + 1, 2).to_i }

    respond_to do |format|
      format.html
      format.json do
        render json:
          { type: @result_m.class.to_s, value: @result_m }
      end
    end
  end
end
