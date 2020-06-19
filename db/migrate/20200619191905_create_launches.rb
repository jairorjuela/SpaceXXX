class CreateLaunches < ActiveRecord::Migration[5.2]
  def change
    create_table :launches do |t|
      t.string :article
      t.string :video
      t.boolean :success
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
