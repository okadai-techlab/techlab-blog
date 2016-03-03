FactoryGirl.define do
  factory :article do
    title 'Article Title'
    content 'This is article\'s sample content.'
    post_status 'open'

    trait :status_pending do
      post_status 'pending'
    end

    trait :status_reservation do
      post_reservation_time DateTime.current+1
      post_status 'status_reservation'
    end
  end
end
