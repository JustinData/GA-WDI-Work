require 'pry'
require 'Unirest'
require 'countdownlatch'

response = Unirest::get("https://privnio-trivia.p.mashape.com/exec?category=entertainment&v=1&method=getQuestions",
  {
    "X-Mashape-Authorization" => "FeTqQsQyAbHRNm6oTxLjAkw9yLn5RQHT"
  }
)

# latch = CountDownLatch.new 2

# Thread.new do
#   2.times do
#     sleep 1
#     latch.countdown!
#   end
# end

# latch.wait 10

# puts latch

binding.pry