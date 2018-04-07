# 选择排序（Selection Sort）
# 选择排序(Selection-sort)是一种简单直观的排序算法。
# 它的工作原理：首先在未排序序列中找到最小（大）元素，存放到排序序列的起始位置，
#   然后，再从剩余未排序元素中继续寻找最小（大）元素，然后放到已排序序列的末尾。
#   以此类推，直到所有元素均排序完毕。 
# 
# 算法描述
#  n个记录的直接选择排序可经过n-1趟直接选择排序得到有序结果。具体算法描述如下：
#   1.初始状态：无序区为R[1..n]，有序区为空；
#   2.第i趟排序(i=1,2,3…n-1)开始时，当前有序区和无序区分别为R[1..i-1]和R(i..n）。
#     该趟排序从当前无序区中-选出关键字最小的记录 R[k]，将它与无序区的第1个记录R交换，
#     使R[1..i]和R[i+1..n)分别变为记录个数增加1个的新有序区和记录个数减少1个的新无序区；
#   3.n-1趟结束，数组有序化了。
# e.g.
#   arr = [9,10,2,8,5]
#
def select_sort(arr)
  (0..arr.length-1).to_a.each do |i|
    puts "i:#{i},值为#{arr[i]}"

    min_index = i

    (i..arr.length-1).to_a.each do |j|
      puts "j:#{j},值为#{arr[j]}"
      if arr[j] && arr[min_index] && (arr[j] < arr[min_index]) # 寻找最小的数
        puts "#{arr[j]} < #{arr[min_index]}"
        min_index = j # 将最小数的索引保存
        puts "min_index:#{min_index}->#{arr[min_index]}, j:#{j}->#{arr[j]}"
      end
    end
    puts "min_index和i交换，交换前min_index:#{arr[min_index]}, i:#{arr[i]}"
    arr[i], arr[min_index] = arr[min_index], arr[i]
    puts "交换后min_index:#{arr[min_index]}, i:#{arr[i]}, 结果#{arr}"
  end
  arr
end

# 执行过程：
# i:0,值为9
# j:0,值为9
# j:1,值为10
# j:2,值为2
# 2 < 9
# min_index:2->2, j:2->2
# j:3,值为8
# j:4,值为5
# min_index和i交换，交换前min_index:2, i:9
# 交换后min_index:9, i:2, 结果[2, 10, 9, 8, 5]
# i:1,值为10
# j:1,值为10
# j:2,值为9
# 9 < 10
# min_index:2->9, j:2->9
# j:3,值为8
# 8 < 9
# min_index:3->8, j:3->8
# j:4,值为5
# 5 < 8
# min_index:4->5, j:4->5
# min_index和i交换，交换前min_index:5, i:10
# 交换后min_index:10, i:5, 结果[2, 5, 9, 8, 10]
# i:2,值为9
# j:2,值为9
# j:3,值为8
# 8 < 9
# min_index:3->8, j:3->8
# j:4,值为10
# min_index和i交换，交换前min_index:8, i:9
# 交换后min_index:9, i:8, 结果[2, 5, 8, 9, 10]
# i:3,值为9
# j:3,值为9
# j:4,值为10
# min_index和i交换，交换前min_index:9, i:9
# 交换后min_index:9, i:9, 结果[2, 5, 8, 9, 10]
# i:4,值为10
# j:4,值为10
# min_index和i交换，交换前min_index:10, i:10
# 交换后min_index:10, i:10, 结果[2, 5, 8, 9, 10]

# 算法分析
# 表现最稳定的排序算法之一，因为无论什么数据进去都是O(n2)的时间复杂度，
# 所以用到它的时候，数据规模越小越好。唯一的好处可能就是不占用额外的内存空间了吧。
# 理论上讲，选择排序可能也是平时排序一般人想到的最多的排序方法了吧。
# 

# 排序算法  时间复杂度(平均)  时间复杂度(最坏)  时间复杂度(最好)  空间复杂度  稳定性
# 选择排序     O(n2)           O(n2)             O(n2)         O(1)     不稳定

# 概念：
#   稳定：如果a原本在b前面，而a=b，排序之后a仍然在b的前面。
#   不稳定：如果a原本在b的前面，而a=b，排序之后 a 可能会出现在 b 的后面。
#   时间复杂度：对排序数据的总的操作次数。反映当n变化时，操作次数呈现什么规律。
#   空间复杂度：是指算法在计算机内执行时所需存储空间的度量，它也是数据规模n的函数。 
