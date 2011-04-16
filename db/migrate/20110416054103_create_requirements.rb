class CreateRequirements < ActiveRecord::Migration
  def self.up
    create_table :requirements do |t|
      t.string :title
      t.text :body
      t.integer :parent_requirement_id

      t.timestamps
    end
  end

  def self.down
    drop_table :requirements
  end
end
