/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var ret = [String]()
    var answer = [Int]()
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else { return [] }
        
        
        answer.append(root.val)
        
        if root.left == nil && root.right == nil {
            var str: String = "\(answer[0])"
            for i in 1..<answer.count {
                str += "->" + "\(answer[i])"
            }
            
            ret.append(str)
            return ret
        }
        
        if(root.left != nil) {
            binaryTreePaths(root.left)
            answer.removeLast()
        }
        
        if(root.right != nil) {
            binaryTreePaths(root.right)
            answer.removeLast()
        }
        return ret
    }
}
