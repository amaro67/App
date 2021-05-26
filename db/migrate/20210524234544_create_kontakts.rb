class CreateKontakts < ActiveRecord::Migration[6.1]
  def change
    create_table :kontakts do |t|

      t.timestamps
    end
  end
end
