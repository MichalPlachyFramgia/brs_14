class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :action

      t.timestamps null: false
    end
  end
end
