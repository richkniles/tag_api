class TagsController < ApplicationController
  def show
    tags = Tag.where(tag_params)
    render json: tag_params.merge(tags: tags.pluck(:tag))
  end

  def create
    Tag.where(tag_params).destroy_all

    params[:tags].each do |value|
      Tag.create tag_params.merge(tag: value)
    end

    render nothing: true
  end

  def delete
    Tag.where(tag_params).destroy_all
    
    render nothing: true
  end

  private

  def tag_params
    @tag_params ||= params.slice(:entity_type, :entity_id)
  end

end