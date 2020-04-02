class AddAuthForPatient < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :password_digest, :string
    add_column :patients, :email, :string
  end
end
