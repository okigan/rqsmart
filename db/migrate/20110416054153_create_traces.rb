class CreateTraces < ActiveRecord::Migration
  def self.up
    create_table :traces do |t|
      t.integer :requirement_id
      t.integer :dependent_requirement_id

      t.timestamps
    end
  end

  def self.down
    drop_table :traces
  end
end
