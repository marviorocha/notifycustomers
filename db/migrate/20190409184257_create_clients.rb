class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :cel
      t.string :tel
      t.string :cpf
      t.string :address
      t.date :birthday
      t.string :type
      t.timestamps
    end
  end
end
