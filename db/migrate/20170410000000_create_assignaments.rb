class CreateAssignaments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignaments do |t|
      t.string :title
      t.string :statment
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
