class CreateQuesions < ActiveRecord::Migration[5.1]
  def change
    create_table :quesions do |t|
      t.string :text
      t.string :answer

      t.timestamps
    end
  end
end
