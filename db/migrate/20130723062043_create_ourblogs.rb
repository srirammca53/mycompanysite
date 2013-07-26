class CreateOurblogs < ActiveRecord::Migration
  def change
    create_table :ourblogs do |t|

      t.timestamps
    end
  end
end
