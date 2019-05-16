class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :messager
      t.timestamp :calendar
      t.boolean :notification, default: 0
      t.references :client, foreign_key: true
      t.timestamps
    end
  end
end
