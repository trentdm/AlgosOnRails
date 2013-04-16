class CreateAlgoProperties < ActiveRecord::Migration
  def change
    create_table :algo_properties do |t|
      t.string :input
      t.string :parameter
      t.string :output
      t.string :code

      t.timestamps
    end
  end
end
