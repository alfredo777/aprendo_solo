class AddClasificationToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :clasification, :string

  end
end
