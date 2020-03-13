class People < ActiveRecord::Migration[5.2]
  def change
    create_table :person do |t|
      t.string :fname, null: false
      t.string :lname. null: false
      t.timestamps
  end

  
end
