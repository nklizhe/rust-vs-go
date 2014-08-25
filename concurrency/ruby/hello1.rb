count = 0
threads = []

10.times do |i|
  threads << Thread.new do
    greeting_message = "Hello"

    # This is weird in Ruby but it's closer to the println! macro
    # usage in the Rust example.
    puts "#{greeting_message} from lightweight thread number #{i}\n"

    count = count + 1
  end
end

# wait for all thread finishes
threads.each &:join
