require 'random_data'

# Create posts
50.times do
# #1
  Post.create!(
# #2
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create comments
# #3
100.times do
  Comment.create!(
# #4
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Idempotence Post
puts "#{Post.count}"
Post.find_or_create_by!(
  title: "This is a unique Post!",
  body:   "This post has a unique body."
)
puts "#{Post.count}"

puts "#{Comment.count}"
Comment.find_or_create_by!(
  body: "This is a unique body for the post!"
)
puts "#{Comment.count}"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
