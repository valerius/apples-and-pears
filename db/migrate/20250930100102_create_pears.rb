class CreatePears < ActiveRecord::Migration[8.0]
  def change
    create_table :pears do |t|
      t.string :name

      t.timestamps
    end
  end
end
