# require "byebug"

# def range(start, last)
#     return [] if start == last
#     #debugger
#      [start] + range(start + 1, last)
# end

# #p range(1, 5)

# def exp1(b1,n)
#     return b1 if n == 1

#     b1 * exp1(b1,n - 1)
# end

# def exp2(b2,n)
#     return b2 if n == 1
#     debugger
#     if n.even?
#         exp2(b2,n/2)**2
#     else
#         b2 * (exp2(b2,(n-1)/2)**2)
#     end
# end

# # p exp1(2,3)
# # p exp2(2,3)

# def deep_dup(array)
#     return array if !array.is_a?(Array)
    
#     array.map do |subarray|
#         deep_dup(subarray)
#     end
# end

# # p robot_parts = [[3, 2, 54, 1], [3, 9,3, 6]] 
# # p copy =  deep_dup(robot_parts)
# # p robot_parts.object_id
# # p copy.object_id

# def fibonacci(n)
#     return [0] if n == 0
#     return [1] if n == 1
#     return [0, 1, 1] if n == 2

#     m = fibonacci(n-1)
#     m << m[-1] + m[-2]

# end

# def fib_ite(n)
#     return [] if n == 0
#     return [0] if n == 1
#     seq = [0, 1]
#     while seq.length < n
#         temp = seq[-1] + seq[-2]
#         seq << temp
#     end

#     seq
# end

# # p fib_ite(6)
# # p fib_ite(1)
# # p fibonacci(6)

# def bsearch(array, target)
#     return nil if array.empty?
#     pi = array.length/2
#     return pi if array[pi] == target

#     if array[pi] > target
#         bsearch(array[0...pi],target) 
#     else
#         return nil if bsearch(array[pi+1..-1],target) == nil
#         bsearch(array[pi+1..-1],target) + pi + 1
#     end

# end

def merge_sort(array)
    return array if array.length == 1 
    mid_point = array.length / 2
    l = array[0...mid_point]
    r = array[mid_point..-1]
    left = merge_sort(l)
    right = merge_sort(r)
    merge_sort_helpers(left, right)
end

def merge_sort_helpers(l,r)
    new_arr = []
    temp_left = l
    temp_right = r

    until temp_left.empty? || temp_right.empty?
        if temp_right[0] >= temp_left[0]
            new_arr << temp_left.shift
        else
            new_arr << temp_right.shift
        end
    end

    if !temp_left.empty?
        new_arr.concat(temp_left)
    elsif !temp_right.empty?
        new_arr.concat(temp_right)
    end

    new_arr #+ temp_left + temp_left
end

# p merge_sort([6,8,12,0,3,3,7])
# p merge_sort([6,8,12,4,3,3,7])

def subsets(array)
    return [] if array.empty?

    new_arr = []
    
end

#p merge_sort_helpers(5)
# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil