class CreateHappenings < ActiveRecord::Migration
  def self.up
    create_table :happenings do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :happenings
  end
end
