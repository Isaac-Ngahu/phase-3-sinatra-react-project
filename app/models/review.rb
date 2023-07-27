class Review < ActiveRecord::Base
    belongs_to :user
    def self.get_all_reviews
        details = []
        reviews = Review.all.where.not(user_id: nil)
        reviews.each do |review|
            name_and_review = [review.user.user_name,review.review]
            details << name_and_review
        end
        return details
    end
    def self.create_review(params)
        Review.create(user_id:params[:id],booking_id:params[:booking_id],review:params[:review])
        return "Review created successfully"
    end
end