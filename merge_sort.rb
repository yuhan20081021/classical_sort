# 归并排序（Merge Sort）
# 归并排序是建立在归并操作上的一种有效的排序算法。
# 该算法是采用分治法（Divide and Conquer）的一个非常典型的应用。
# 将已有序的子序列合并，得到完全有序的序列；
# 即先使每个子序列有序，再使子序列段间有序。若将两个有序表合并成一个有序表，称为2-路归并。
#
# 算法描述
#  1.把长度为n的输入序列分成两个长度为n/2的子序列；
#  2.对这两个子序列分别采用归并排序；
#  3.将两个排序好的子序列合并成一个最终的排序序列。
# e.g.
#   arr = [9,10,2,8,5]
#
def merge_sort!(arr)
  def merge(left, right)
    sorted = []
    until left.empty? or right.empty?
        sorted << (left.first <= right.first ? left.shift : right.shift)
    end
    sorted + left + right
  end

  return arr if arr.size <= 1
  left = arr[0, arr.size/2]
  right = arr[arr.size/2, arr.size - arr.size/2]
  merge(left.merge_sort, right.merge_sort)
end


# 算法分析
# 归并排序是一种稳定的排序方法。
# 和选择排序一样，归并排序的性能不受输入数据的影响，但表现比选择排序好的多，
# 因为始终都是O(nlogn）的时间复杂度。代价是需要额外的内存空间。
#
# 排序算法  时间复杂度(平均)  时间复杂度(最坏)  时间复杂度(最好)  空间复杂度  稳定性
# 归并排序     O(nlog2n)           O(n2)          O(n)          O(1)     稳定

# 概念：
#   稳定：如果a原本在b前面，而a=b，排序之后a仍然在b的前面。
#   不稳定：如果a原本在b的前面，而a=b，排序之后 a 可能会出现在 b 的后面。
#   时间复杂度：对排序数据的总的操作次数。反映当n变化时，操作次数呈现什么规律。
#   空间复杂度：是指算法在计算机内执行时所需存储空间的度量，它也是数据规模n的函数。 
