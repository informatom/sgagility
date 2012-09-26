class Category < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    place :string
    timestamps
  end
  
  has_many :projects

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
    true
  end

  def update_permitted?
    acting_user.administrator?
    true
  end

  def destroy_permitted?
    acting_user.administrator?
    true
  end

  def view_permitted?(field)
    true
  end

  # attr_accessible :title, :body
end
