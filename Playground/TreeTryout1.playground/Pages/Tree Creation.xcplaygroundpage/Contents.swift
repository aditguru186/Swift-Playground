import UIKit

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

root.printTree()


