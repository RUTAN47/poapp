class CreatePonumbers < ActiveRecord::Migration
  def change
    create_table :ponumbers do |t|
      t.string :email
      t.string :project
      t.integer :amount
      t.string :po
      t.timestamps
    end
  end
end
