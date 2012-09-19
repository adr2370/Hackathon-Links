class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
