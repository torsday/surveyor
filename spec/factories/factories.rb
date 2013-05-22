FactoryGirl.define do

  factory :user, :aliases => [:respondent, :author] do |f|
    f.sequence(:email) { |n| "pat#{n}#{Time.now.to_i.to_s.slice(-4..-1)}@example.com"}
    password "password"
  end

  factory :survey do
    author
    title "Railroads"
  end

  factory :question do
    survey
    description "Are railroads in vogue?"
  end

  factory :answer do
    description "No way!"
  end

  factory :result do
    respondent
    survey
    answer
    question
  end

end
