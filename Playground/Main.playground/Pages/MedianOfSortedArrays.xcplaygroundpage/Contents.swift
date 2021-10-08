//: [Previous](@previous)

import Foundation

let arr1:[Int] = [1,3]
let arr2:[Int] = [2]
print(findMedianSortedArrays(arr1,arr2))

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let count1 = nums1.count
        let count2 = nums2.count
        let count = count1+count2
        var nums:[Int] = [Int](repeating:0, count:count)
        var i = 0, j = 0, k = 0
        while(i < count1 && j < count2){
            if(nums1[i]<nums2[j]){
                nums[k] = nums1[i]
                i+=1
            }
            else{
                nums[k] = nums2[j]
                j+=1
            }
            k+=1
        }
        while(i<count1){
            nums[k] = nums1[i]
            i+=1
            k+=1
        }
        while(j<count2){
            nums[k] = nums2[j]
            j+=1
            k+=1
        }
        print(nums)
        var median:Double = 0.0
        if(count%2 == 0){
            var i1 = count/2
            var i2 = i1-1
            median = (Double(nums[i1])+Double(nums[i2]))/2.0
        }
        else{
            median = Double(nums[(count-1)/2])
        }
        return median
    }
//: [Next](@next)
