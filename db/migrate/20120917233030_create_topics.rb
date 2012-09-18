class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :descritption
      t.integer :value

      t.timestamps
    end
  end
end
