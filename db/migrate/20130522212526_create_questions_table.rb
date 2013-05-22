class  CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :survey
      t.text :description
    end
  end
end
