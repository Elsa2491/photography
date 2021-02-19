class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.string :title
      t.string :description
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
