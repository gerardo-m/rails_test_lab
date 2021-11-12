class CreateDummyModels < ActiveRecord::Migration[6.1]
  def change
    create_table :dummy_models do |t|
      t.string :dummy_text1
      t.string :dummy_text2
      t.string :dummy_text3

      t.timestamps
    end
  end
end
