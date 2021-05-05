class Entry < ApplicationRecord
    validates :calories, :proteins, :carbohydrates, :fats, :meal_type, :category_id, presence: true # check if there is user input
    belongs_to :category # make relationships
    def day
        self.created_at.strftime("%b %e, %Y")
    end
end
