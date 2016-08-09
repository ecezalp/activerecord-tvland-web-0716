class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  def list_roles
    self.characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end



# class Choice
#   belongs_to :user
#   belongs_to :answer
#   has_one :question, :through => :answer
# end


# class AddGradeAndBirthdateToStudents < ActiveRecord::Migration
#   def change
#     add_column :students, :grade, :integer
#     add_column :students, :birthdate, :string
#   end
# end


# def self.highest_rating
#   self.maximum(:rating)
# end

# def self.most_popular_show
#   self.find_by(rating: self.maximum(:rating))
# end

# def self.lowest_rating
#   self.minimum(:rating)
# end

# def self.least_popular_show
#   self.find_by(rating: (self.minimum(:rating)))
# end

# def self.ratings_sum
#   self.sum(:rating)
# end

# def self.shows_by_alphabetical_order
#   self.order(:name)
# end

# def self.popular_shows
#   self.where("rating > 5")
# end


# has_many :tweets

#   validates :username, :uniqueness => true
# #(callback methods)  after_save :show_error_message
