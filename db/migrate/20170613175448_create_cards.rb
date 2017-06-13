class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :website, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
