class Bah < ActiveRecord::Migration
  def change
    rename_table :create_logs, :logs
  end
end
