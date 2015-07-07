class AddVideoFileToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :video_file_file_name, :string
  	add_column :products, :video_file_content_type, :string
  	add_column :products, :video_file_file_size, :integer
  end
end
