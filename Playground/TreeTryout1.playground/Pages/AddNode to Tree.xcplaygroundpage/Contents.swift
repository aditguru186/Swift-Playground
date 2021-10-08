import UIKit
import Foundation

var str = "Hello, playground"
class Node <T>{
    var value:T
    var children:[Node] = []
    weak var parent:Node?
    
    init(_ value:T) {
        self.value = value
    }
    func printNodeData() -> [String] {
        return ["\(self.value)"] + self.children.flatMap{$0.printNodeData()}.map{"    "+$0}
    }
    func printTree() {
        let text = printNodeData().joined(separator: "\n")
        print(text)
    }
    func addChild(_ child:Node){
        self.children.append(child)
        child.parent = self
    }
    func searchNode(element : T) -> Node?{
        if("\(element)" == "\(self.value)"){
            return self
        }
        for child in self.children{
            if let resultNode = child.searchNode(element:element){
                return resultNode
            }
        }
        return nil
    }
}
let root  = Node<Any>("Root")
let aNode = Node<Any>(1)
let bNode = Node<Any>(2)
let cNode = Node<Any>(3)
let dNode = Node<Any>("Leaf Node1")
let eNode = Node<Any>("Leaf Node2")

root.children = [aNode,bNode,cNode]
aNode.children = [dNode]
bNode.children = [eNode]
cNode.children = [Node("Leaf Node3"),Node("Leaf Node4")]
aNode.children.append(Node("x"))
aNode.children.append(Node("y"))
root.addChild(Node(4))

let searchResult = root.searchNode(element:1)
if searchResult != nil{
    searchResult!.printTree()
}
else{
    print("Not Found")
}
//root.printTree()




