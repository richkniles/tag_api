class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :entity_type
      t.string :entity_id
      t.string :tag

      t.timestamps
    end
  end
end
