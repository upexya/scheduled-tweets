class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    return if tweet.published?

    # Reschedule a tweet to the future
    # eg: someone resedules a job from noon to tomorrow.
    # Keep in mind it is difficult to cancel a scheduled job, so instead of cancelling previous job at 8am, we just dont run it as publish_at will be in the future.
    # if user preponds the job, the job runs and sets tweet_id, so when previously scheduled job tries to run, it will see that tweet_id is already set and will not run.
    return if tweet.publish_at > Time.current

    tweet.publish_to_twitter!
  end
end
