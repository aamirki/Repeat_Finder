# A group of methods which all accomplish the same goal - to count the number of appearances of a given
# number in a list of numbers. Naive methods do not require a sorted list, while efficient methods do.
class Repeat_Finder

  # Made to assist my understanding for Algorithms & Data


  # O(n) time, advantage: works even if given list is unsorted
  def naive_recursion(num_list, target_num, num_repeats = 0)

    return num_repeats if num_list.length.zero?

    if num_list[0] == target_num
      return naive_recursion(num_list.drop(1), target_num, num_repeats + 1)
    else
      return naive_recursion(num_list.drop(1), target_num, num_repeats)
    end

  end

  # O(n) time, advantage: works even if given list is unsorted
  def naive_iteration(num_list, target_num)
    num_repeats = 0
    for i in num_list
      num_repeats += 1 if i == target_num
    end
    return num_repeats
  end

  # O(log n) time, only works on sorted lists
  def efficient_recursion(sorted_num_list, target_num, num_repeats = 0)

    return num_repeats if sorted_num_list.length.zero?

    half_index = sorted_num_list.length / 2
    half_val = sorted_num_list[half_index]
    sorted_num_list.delete_at(half_index)
    if half_val > target_num
      return efficient_recursion(sorted_num_list[0..half_index], target_num, num_repeats)
    elsif half_val < target_num
      return efficient_recursion(sorted_num_list[half_index..sorted_num_list.length], target_num, num_repeats)
    else # target_num == sorted_num_list[half_index]
      return efficient_recursion(sorted_num_list, target_num, num_repeats + 1)
    end

  end

  def efficient_iteration(sorted_num_list, target_num)

    num_repeats = 0

    until sorted_num_list.length.zero?
      half_index = sorted_num_list.length / 2
      half_val = sorted_num_list[half_index]
      sorted_num_list.delete_at(half_index)

      if half_val > target_num
        sorted_num_list = sorted_num_list[0..half_index]
      elsif half_val < target_num
        sorted_num_list = sorted_num_list[half_index..sorted_num_list.length]
      else
        num_repeats += 1
      end

    end

    return num_repeats
  end




end