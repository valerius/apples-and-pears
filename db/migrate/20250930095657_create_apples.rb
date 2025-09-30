class CreateApples < ActiveRecord::Migration[8.0]
  def change
    create_table :apples do |t|
      t.string :name
      t.string :size

      t.timestamps
    end
  end
end
