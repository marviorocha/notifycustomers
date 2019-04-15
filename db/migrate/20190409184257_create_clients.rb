class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :cel
      t.string :tel
      t.string :cpf
      t.date :birthday
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
