class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :deck_id, NULL: false
      t.string :question, NULL: false
      t.string :answer, NULL: false

      t.timestamps
    end
  end
end
