class CreateResponces < ActiveRecord::Migration
  def change
    create_table :responces do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :quest
      t.text :answer
      t.integer :value

      t.timestamps
    end
  end
end
