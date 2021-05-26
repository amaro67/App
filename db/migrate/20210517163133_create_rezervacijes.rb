class CreateRezervacijes < ActiveRecord::Migration[6.1]
  def change
    create_table :rezervacijes do |t|
      t.string :klijent
      t.string :frizura
      t.string :datum

      t.timestamps
    end
  end
end
