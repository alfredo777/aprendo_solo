class AddPublicadoToVideoLoader < ActiveRecord::Migration
  def change
    add_column :video_loaders, :publicado, :string, :default => "No publicado"

  end
end
