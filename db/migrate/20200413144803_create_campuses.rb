class CreateCampuses < ActiveRecord::Migration[5.1]
  def change
    create_table :campuses do |t|
      t.string :name
    end
  end
end
