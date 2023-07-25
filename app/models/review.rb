class Review < ActiveRecord::Base
    belongs_to :user
    def self.get_all_reviews
        details = []
        Review.all.each do |review|
            if review.user.nil? || review.review.nil?
                name_and_review = ["null user","null review"]
                details << name_and_review
            else
                name_and_review = [review.user.user_name,review.review]
                details << name_and_review
            end        
        end
        details
    end
    def self.create_review(params)
        Review.create(user_id:params[:id],booking_id:params[:booking_id],review:params[:review])
        return "review created successfully"
    end
end