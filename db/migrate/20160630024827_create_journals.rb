class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.references :observer, index: true

      t.timestamps null: false
    end
  end
end
