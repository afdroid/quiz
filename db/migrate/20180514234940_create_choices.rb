class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.string :text
      t.integer :correct, default: 0
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
