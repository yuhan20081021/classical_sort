# 冒泡排序（Bubble Sort）
# 冒泡排序是一种简单的排序算法。
# 它重复地走访过要排序的数列，一次比较两个元素，如果它们的顺序错误就把它们交换过来。
# 走访数列的工作是重复地进行直到没有再需要交换，也就是说该数列已经排序完成。
# 这个算法的名字由来是因为越小的元素会经由交换慢慢“浮”到数列的顶端。 
# 算法描述:
#   1.比较相邻的元素。如果第一个比第二个大，就交换它们两个；
#   2.对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对，这样在最后的元素应该会是最大的数；
#   3.针对所有的元素重复以上的步骤，除了最后一个；
#   4. 重复步骤1~3，直到排序完成。
# e.g.
#   arr = [9,10,2,8,5]
#  
def bubble_sort!
  (1..arr.length).to_a.each do |i|
    puts "i=#{i}, 值为：#{arr[i]}"
    (0...(arr.length-f)).to_a.each do |j|
      puts "j=#{j}, 值为：#{arr[j]}"
      if arr[j] && arr[j+1] && (arr[j] > arr[j+1])
        puts "将 #{arr[j]} 和 #{arr[j+1]} 交换"
        arr[j], arr[j+1] = arr[j+1], arr[j]
        puts "交换后结果#{arr}"
      end
    end
    puts "i＋1"
    i += 1
  end
  arr
end

# 执行过程：
# i=1, 值为：10
# j=0, 值为：9
# j=1, 值为：10
# 将 10 和 2 交换
# 交换后结果[9, 2, 10, 8, 5]
# j=2, 值为：10
# 将 10 和 8 交换
# 交换后结果[9, 2, 8, 10, 5]
# j=3, 值为：10
# 将 10 和 5 交换
# 交换后结果[9, 2, 8, 5, 10]
# i＋1
# i=2, 值为：8
# j=0, 值为：9
# 将 9 和 2 交换
# 交换后结果[2, 9, 8, 5, 10]
# j=1, 值为：9
# 将 9 和 8 交换
# 交换后结果[2, 8, 9, 5, 10]
# j=2, 值为：9
# 将 9 和 5 交换
# 交换后结果[2, 8, 5, 9, 10]
# j=3, 值为：9
# i＋1
# i=3, 值为：9
# j=0, 值为：2
# j=1, 值为：8
# 将 8 和 5 交换
# 交换后结果[2, 5, 8, 9, 10]
# j=2, 值为：8
# j=3, 值为：9
# i＋1
# i=4, 值为：10
# j=0, 值为：2
# j=1, 值为：5
# j=2, 值为：8
# j=3, 值为：9
# i＋1
# i=5, 值为：
# j=0, 值为：2
# j=1, 值为：5
# j=2, 值为：8
# j=3, 值为：9
# i＋1

# while 实现版本
def bubble_sort!
  f = 1
  while f < arr.length
    (0...(arr.length-f)).to_a.each do |i|
      arr[i], arr[i+1] = arr[i+1], arr[i] if arr[i] > arr[i+1]
    end
    f += 1
  end
  arr
end

# 排序算法  时间复杂度(平均)  时间复杂度(最坏)  时间复杂度(最好)  空间复杂度  稳定性
# 冒泡排序     O(n*n)           O(n*n)             O(n)         O(1)     稳定

# 概念：
#   稳定：如果a原本在b前面，而a=b，排序之后a仍然在b的前面。
#   不稳定：如果a原本在b的前面，而a=b，排序之后 a 可能会出现在 b 的后面。
#   时间复杂度：对排序数据的总的操作次数。反映当n变化时，操作次数呈现什么规律。
#   空间复杂度：是指算法在计算机内执行时所需存储空间的度量，它也是数据规模n的函数。 
