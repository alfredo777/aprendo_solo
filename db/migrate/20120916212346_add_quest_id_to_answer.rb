class AddQuestIdToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :quest_id, :integer

  end
end
