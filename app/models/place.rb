class Place < ActiveRecord::Base
  attr_accessible :address, :city, :country, :description, :houseno, :latitude, :longitude, :rent, :street, :user
  acts_as_gmappable :process_geocoding => false
  geocoded_by :full_address
  
  after_save {update_column(:address, "#{houseno}, #{street}, #{city}, #{country}")}

  before_update {update_column(:address, "#{houseno}, #{street}, #{city}, #{country}")}

  after_validation :geocode

  def full_address
  	"#{houseno}, #{street}, #{city}, #{country}"
  end	

  def gmaps4rails_address
      "#{houseno}, #{street}, #{city}, #{country}"
  end

  def gmaps4rails_infowindow
    "<ul class='list-unstyled'>
    <li>Name: #{user}</li>
    <li>Rent: Rs. #{rent}</li>
    <li>Address: #{address}</li>
    </ul>"
  end
end
