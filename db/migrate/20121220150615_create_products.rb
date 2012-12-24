class CreateProducts < ActiveRecord::Migration

=begin
  def down
    drop_table :products
  end
=end
  
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :release_date
      t.string :genre
      t.string :platform
      t.integer :user_id

      t.timestamps
    end
    add_index :products, [:user_id, :created_at]

  end


  
  
end
