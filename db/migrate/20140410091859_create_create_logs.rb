class CreateCreateLogs < ActiveRecord::Migration
  def change
    create_table :create_logs do |t|
      t.text :text
      t.timestamps
    end
  end
end
