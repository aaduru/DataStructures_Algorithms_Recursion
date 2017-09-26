
 A data structure is a way of storing and organizing data in a computer so that it can be used efficiently. Depending on how you will use the data, different data structures may be appropriate.

 In computer science, a tree is a widely used abstract data type (ADT)—or data structure implementing this ADT—that simulates a hierarchical tree structure, with a root value and subtrees of children with a parent node, represented as a set of linked nodes.

A tree data structure can be defined recursively (locally) as a collection of nodes (starting at a root node), where each node is a data structure consisting of a value, together with a list of references to nodes (the "children"), with the constraints that no reference is duplicated, and none points to the root.

One simple example is a file system

#Terminology used in trees[edit]
#Root
The top node in a tree.

#Child
A node directly connected to another node when moving away from the Root.

#Parent
The converse notion of a child.

#Siblings
A group of nodes with the same parent.

#Descendant
A node reachable by repeated proceeding from parent to child.

#Ancestor
A node reachable by repeated proceeding from child to parent.

#Leaf
(less commonly called External node)
A node with no children.

#Branch
#Internal node
A node with at least one child.

#Degree
The number of sub trees of a node.

#Edge
The connection between one node and another.

#Path
A sequence of nodes and edges connecting a node with a descendant.

#Level
The level of a node is defined by 1 + (the number of connections between the node and the root).

#Height of node
The height of a node is the number of edges on the longest path between that node and a leaf.

#Height of tree
The height of a tree is the height of its root node.

#Depth
The depth of a node is the number of edges from the tree's root node to the node.

We can search the tree in two different ways.\
-> Depth first search
-> Breadth first search

#Depth First Search(DFS)
Here to find the target, it first search the leaf node and then the parent node.

#Breadth First Search.
Here to find the target, it searches layer by layer. 
