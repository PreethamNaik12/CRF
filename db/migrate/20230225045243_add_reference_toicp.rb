class AddReferenceToicp < ActiveRecord::Migration[6.1]
  def change
    add_reference :icp_ms, :user, foreign_key: true
  end
end
