class CreateHardwares < ActiveRecord::Migration[6.0]
  def change
    create_table :hardwares do |t|

      t.timestamps
    end
  end
end
