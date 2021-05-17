class CreateFrizures < ActiveRecord::Migration[6.1]
  def change
    create_table :frizures do |t|
      t.string :tip
      t.string :cijena
      t.string :opis

      t.timestamps
    end
  end
end
