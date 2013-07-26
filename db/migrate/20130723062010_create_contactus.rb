class CreateContactus < ActiveRecord::Migration
  def change
    create_table :contactus do |t|

      t.timestamps
    end
  end
end
