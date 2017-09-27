require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms


#If the queue is empty:
#if we removed all nodes from the graph, return the list
#else we return an empty list that indicates that an order is not possible due to a cycle

def topological_sort(vertices)
  #Determine the in-degree of each node.
  #Collect nodes with zero in-degree in a queue.
  vertex_queue = []
  sorted_queue = []

  vertex_count = {}

  #vertex queue has vertex which do not have any in_edges
  vertices.each do |vertex|
    vertex_count[vertex] = vertex.in_edges.count
    vertex_queue << vertex if vertex.in_edges.empty?
  end

  #While the queue is not empty:
  #Pop node u from queue,
  #remove u from the graph (depending on your implementation, this may
  #or may not involve the destroy! method; what are the complications to
  #destroying as we loop? What is another way we can track the number of in_edges?),
  #check if there is a new node with in-degree zero (among the neighbors of u)
  # yes, put that node into the queue.
  #We maintain a list that records in which order the nodes are removed.


  until vertex_queue.empty?
    new_vertex = vertex_queue.shift
    sorted_queue << new_vertex

    new_vertex.out_edges.each do |edge|
      to_vertex = edge.to_vertex

      vertex_count[to_vertex] -= 1
      vertex_queue << to_vertex if vertex_count[to_vertex] == 0
    end
  end
  sorted_queue
end
