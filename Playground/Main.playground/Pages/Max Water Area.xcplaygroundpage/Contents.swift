//: [Previous](@previous)

import Foundation

print(maxArea([1,2,1]))

func maxArea(_ height: [Int]) -> Int {
        var maxHeight:Int = 0, maxHeightPos = 0,currentPos:Int = 0, maxArea:Int = 0
        var prevMaxHeigh:Int = 0, prevMaxHeightPos:Int = 0
        for var h in height{
            currentPos += 1
            if(h > maxHeight){
                if(currentPos == 1){
                    maxHeight = h
                    maxHeightPos = currentPos
                    continue
                }
                var area = (currentPos-maxHeightPos) * maxHeight
                if(area > maxArea){
                    maxArea = area
                    maxHeightPos = currentPos
                    maxHeight = h
                }
            }
            else{
                var area = (currentPos-maxHeightPos) * h
                maxArea = (area > maxArea) ? area : maxArea
            }
            
        }
        return maxArea
    }
