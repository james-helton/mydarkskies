class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.references :journal, index: true
      t.string :title
      t.datetime :beginning
      t.integer :duration
      t.text :body

      t.timestamps null: false
    end
  end
end
