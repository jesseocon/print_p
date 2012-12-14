class SaveTheDate < ActiveRecord::Base
  attr_accessible :description, :image_content_type, :image_file_name, 
                  :image_file_size, :image_updated_at, :name, :color_tokens,
                  :season_tokens, :style_tokens, :image
                  
  has_many :save_the_date_colors
  has_many :colors, through: :save_the_date_colors
  
  has_many :save_the_date_seasons
  has_many :seasons, through: :save_the_date_seasons
  
  has_many :save_the_date_styles
  has_many :styles, through: :save_the_date_styles
                  
  attr_reader :color_tokens, :season_tokens, :style_tokens

  def color_tokens=(ids)
    self.color_ids = ids.split(",")
  end

  def season_tokens=(ids)
    self.season_ids = ids.split(",")
  end

  def style_tokens=(ids)
    self.style_ids = ids.split(",")
  end

  has_attached_file :image, 
  	:styles => { :medium => "300x300>", 
  	  :grid => {:geometry => "1500x1500^", :format => :jpg}, 
  	  :thumb => {:geometry => "290x200>", :format => :jpg}},
  	  :large => {:geometry => "800x900"},
    	  :convert_options => {
    	    :grid => "-gravity southeast -extent 300x300",
    	    :thumb => "-quality 45 -strip"
    	  },

    :whiny => false,

    :storage => :s3,
    :s3_headers => { 'Content-Disposition' => 'inline' },
    :s3_credentials => (Rails.root + "config/s3.yml").to_s,
    :hash_data => ":attachment/:id/:style.:extension",
    :hash_secret => "longSecretString",
    :path => ":attachment/:id/:hash/:style.:extension"
end
