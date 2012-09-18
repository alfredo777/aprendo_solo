class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.text :description
      t.integer :value

      t.timestamps
    end
  end
end
