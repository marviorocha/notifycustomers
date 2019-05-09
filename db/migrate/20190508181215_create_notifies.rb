class CreateNotifies < ActiveRecord::Migration[5.2]
  def change
    create_table :notifies do |t|
      t.string :title
      t.text :messager
      t.timestamp :delivery
      t.boolean :send
      t.references :client, foreign_key: true
      t.timestamps
    end
  end
end
