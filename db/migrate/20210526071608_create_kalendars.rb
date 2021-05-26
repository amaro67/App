class CreateKalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :kalendars do |t|

      t.timestamps
    end
  end
end
