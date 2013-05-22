
num_of_users = 6
num_of_surveys = num_of_users * 10
num_of_questions = num_of_surveys * 12
num_of_answers = num_of_questions * 4

# CREATE USERS
num_of_users.times do
  User.create(
    :email => Faker::Internet.email,
    :password => '123456')
end
User.create(
  :email => 'c@c.com',
  :password => '123456')
users = User.all

# CREATE ANSWERS
num_of_answers.times do
  Answer.create(:description => Faker::Company.catch_phrase)
end
answers = Answer.all


# CREATE SURVEYS
num_of_surveys.times do
  Survey.create(:author => users.sample, :title => Faker::Company.bs)
end
surveys = Survey.all

# CREATE QUESTIONS
num_of_questions.times do
  Question.create(:survey => surveys.sample, :description => Faker::Company.bs)
end
questions = Question.all

# Create Answer-Question Associations
questions.each do |question|
  4.times do
    question.answers << answers.sample
  end
end

# CREATE RESULTS
users.each do |user|
  surveys.each do |survey|
    survey.questions.each do |question|
      Result.create(:respondent => user,
        :survey => survey,
        :question => question,
        :answer => question.answers.sample)
    end
  end
end
