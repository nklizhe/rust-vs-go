count = 0

10.times do |i|
  Thread.new do
    greeting_message = "Hello"

    # This is weird in Ruby but it's closer to the println! macro
    # usage in the Rust example.
    puts "#{greeting_message} from lightweight thread number #{i}\n"

    count = count + 1
  end
end

# wait for all thread finishes
while count < 10 do
    # do nothing
  end
