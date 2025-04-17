class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  validates :body, length: { maximum: 280, minimum: 1 }
  validates :publish_at, presence: true

  after_initialize do
    self.publish_at ||= 24.hours.from_now
  end

  def published?
    tweet_id?
  end

  def publish_to_twitter!
    payload = { text: body }.to_json
    tweet = twitter_account.client.post("tweets", payload)
    update(tweet_id: tweet["data"]["id"])
  end
end
