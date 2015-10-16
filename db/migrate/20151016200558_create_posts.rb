class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :name, :string
      t.column :text, :string
      t.column :bus_id, :integer

      t.timestamps
    end
  end
end
