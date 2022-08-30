  # ✅ 1. make a helper method that will seed data

  def d1 
    Dog.new(
      "Baron",	
      "9 years",
      "GSD/English Lab mix",
      "https://res.cloudinary.com/dnocv6uwb/image/upload/v1629567379/baron_x0s6ai.jpg",
      Time.now,
      Time.now
      )
  end 

  def d2
    Dog.new( 
      "Molly",	
      "3 years",
     	"Terrier / Chihuahua",
      "https://res.cloudinary.com/dnocv6uwb/image/upload/v1631229038/EEE90-E50-25-F0-4-DF0-98-B2-0-E0-B6-F9-BAA89_menwgg.jpg",
      Time.now,
      Time.now
      )
  end 