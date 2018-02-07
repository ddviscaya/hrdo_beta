class AddEmployeeNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :empno, :string
  end
end
