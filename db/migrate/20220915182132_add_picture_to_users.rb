class AddPictureToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :picture, :string, :default => "https://media.istockphoto.com/vectors/default-avatar-profile-icon-vector-vector-id1337144146?b=1&k=20&m=1337144146&s=170667a&w=0&h=ys-RUZbXzQ-FQdLstHeWshI4ViJuEhyEa4AzQNQ0rFI="
  end
end
