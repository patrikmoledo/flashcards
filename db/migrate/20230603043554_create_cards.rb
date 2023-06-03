class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.text :front
      t.text :back
      t.references :deck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
