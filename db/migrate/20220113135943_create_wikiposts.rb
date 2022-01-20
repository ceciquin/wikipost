class CreateWikiposts < ActiveRecord::Migration[6.1]
  def change
    create_table :wikiposts do |t|

      t.timestamps
    end
  end
end
