class CreateRuns < ActiveRecord::Migration
  def self.up
    create_table :runs do |t|
      t.text :code
      t.text :result
      t.timestamps
    end
  end

  def self.down
    drop_table :runs
  end
end
