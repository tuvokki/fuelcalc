class CreateReceits < ActiveRecord::Migration
  def self.up
    create_table :receits do |t|
      t.integer :kilometers
      t.float :liters
      t.date :accountdate

      t.timestamps
    end
  end

  def self.down
    drop_table :receits
  end
end
