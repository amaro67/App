class CreateKlijentis < ActiveRecord::Migration[6.1]
  def change
    create_table :klijentis do |t|
      t.string :ime
      t.string :prezime
      t.string :broj

      t.timestamps
    end
  end
end
