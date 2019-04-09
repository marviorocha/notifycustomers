class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :cel
      t.integer :tel
      t.integer :cpf
      t.date :birthday
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
