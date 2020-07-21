class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :username
      t.string :email
      t.string :name
      t.string :interests
      t.string :city

      t.timestamps
    end
  end
end
