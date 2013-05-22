class CreateAnswersTable < ActiveRecord::Migration
  create_table :answers do |t|
    t.text :description
  end
end
