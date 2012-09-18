class AddTopicsIdToQuest < ActiveRecord::Migration
  def change
    add_column :quests, :topic_id, :integer

  end
end
