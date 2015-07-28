class StatsController < ApplicationController
  def index
    render json: Tag.group(:tag).count
  end

  def show
    render json: Tag.where(tag_params).group(:tag).count
  end

  private

  def tag_params
    @tag_params ||= params.slice(:entity_type, :entity_id)
  end

end