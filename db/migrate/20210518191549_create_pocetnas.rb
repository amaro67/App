class CreatePocetnas < ActiveRecord::Migration[6.1]
  def change
    create_table :pocetnas do |t|

      t.timestamps
    end
  end
end
