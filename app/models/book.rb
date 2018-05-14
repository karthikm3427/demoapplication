class Book < ActiveRecord::Base
  belongs_to :author
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |book|
        csv << book.attributes.values
      end
    end
  end
  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
    where("rating LIKE ?", "%#{search}%")
    where("year LIKE ?", "%#{search}%")
  end
end

