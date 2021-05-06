class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :photo
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.string :nationality
      t.string :flag
      t.string :video
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
