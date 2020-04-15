class AddDetailsToTutors < ActiveRecord::Migration[5.1]
  def change
    add_column :tutors, :username, :string
    add_column :tutors, :password_digest, :string
  end
end
