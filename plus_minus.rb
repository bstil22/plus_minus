class Summit
    attr_accessor :arr, :num_inputs, :hash_num
    def initialize
        @arr = STDIN.read.split(" ").drop(1).map(&:to_i)
        @hash_num = {:positives => 0, :zeroes => 0, :negatives => 0}
        @length = @arr.length
    end

    def start
        @arr.each do |a|
             if a > 0
                 hash_num[:positives] += 1
             elsif a < 0
                  hash_num[:negatives] += 1
             else
                 hash_num[:zeroes] += 1
             end
        end
     end
     
    def print_answer
        puts (hash_num[:positives] / @length.to_f).round(3)
        puts (hash_num[:negatives] / @length.to_f).round(3)
        puts (hash_num[:zeroes] / @length.to_f).round(3)
    end
end

a = Summit.new
a.start
a.print_answer