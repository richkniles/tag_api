class TagsController < ApplicationController
  def show
    tag_params = params.slice(:entity_type, :entity_id)
    tags = Tag.where(tag_params)
    render json: tag_params.merge(tags: tags.pluck(:tag))
  end
  def create
    tag_params = params.slice(:entity_type, :entity_id)
    Tag.where(tag_params).destroy_all
    tag_values = params[:tags]
    tag_values.each do |value|
      Tag.create tag_params.merge(tag: value)
    end
    render nothing: true
  end
  def delete
  end
end