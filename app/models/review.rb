class Review < ActiveRecord::Base
    belongs_to :user
    def self.get_all_reviews
        details = []
        Review.all.each do |review|
            name_and_review = [review.user.user_name,review.review]
            details << name_and_review
        end
        details
    end
    def self.create_review(params)
        Review.create(user_id:params[:id],booking_id:params[:booking_id],review)
        return "review created successfully"
    end
end