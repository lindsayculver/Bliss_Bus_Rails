class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.column :name, :string
      t.column :type, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
