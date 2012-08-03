class Story < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    description :string
    think_date :date
    start_date :date
    end_date :date
    responsable :string
    calle :string
    localidad :string
    codigo_postal :string
    email :email_address
    timestamps
  end
  
  belongs_to :project
  
  has_attached_file :photo, 
    :styles => { 
      :medium => ["200x138#", :png], 
      :thumb => ["100x100>", :png] },
    :whiny => false,
    :path => 'lib/photos/:style/:filename',
    :url => '/stories/:id?style=:style'

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

  # attr_accessible :title, :body
end
