class CreateUserRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_ratings do |t|
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true
      t.integer :ratings
      t.string :comment
      t.string :status

      t.timestamps
    end
  end
end
