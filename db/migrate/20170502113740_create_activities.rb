class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.text :body
      t.integer :progress
      t.references :goal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
