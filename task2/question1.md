communication takes place in ros through nodes.
these nodes represent the executable codes.these nodes can entirely reside on one computer or diff computers or btw computers and bots.advantage of this feature is that each node can control one aspect of the sys.
For example, one node can capture the images from a camera and send the images to another node for processing. After processing the image, the second node can send a control signal to a third node for controlling a robotic manipulator in response to the camera view.
The main mechanism used by ROS nodes to communicate is by sending and receiving messages. The messages are organized into specific categories called topics. Nodes may publish messages on a particular topic or subscribe to a topic to receive information.

# ROS nodes
Basically, nodes are processes that perform some computation or task. The nodes themselves are really software processes but with the capability to register with the ROS Master node and communicate with other nodes in the system. The ROS design idea is that each node is independent and interacts with other nodes using the ROS communication capability. The Master node is described in the ROS Master section to follow.
One of the strengths of ROS is that a particular task, such as controlling a wheeled mobile robot, can be separated into a series of simpler tasks. The tasks can include the perception of the environment using a camera or laser scanner, map making, planning a route, monitoring the battery level of the robot's battery, and controlling the motors driving the wheels of the robot. Each of these actions might consist of a ROS node or a series of nodes to accomplish the specific tasks.
A node can independently execute code to perform its task but can also communicate with other nodes by sending or receiving messages. The messages can consist of data, commands, or other information necessary for the application.

# ROS topics
Some nodes provide information for other nodes, as a camera feed would do, for example. Such a node is said to publish information that can be received by other nodes. The information in ROS is called a topic. A topic defines the types of messages that will be sent concerning that topic.
The nodes that transmit data publish the topic name and the type of message to be sent. The actual data is published by the node. A node can subscribe to a topic and transmitted messages on that topic are received by the node subscribing.
Continuing with the camera example, the camera node can publish the image on the camera/image_raw topic.
Image data from the camera/image_raw topic can be used by a node that shows the image on the computer screen. The node that receives the information is said to subscribe to the topic being published, in this case camera/image_raw.
In some cases, a node can both publish and subscribe to one or more topics.

# ROS messages
ROS messages are defined by the type of message and the data format. The ROS package named std_msgs, for example, has messages of type String which consist of a string of characters. Other message packages for ROS have messages used for robot navigation or robotic sensors. The turtlesim package has its own set of messages that pertain to the simulation.

# ROS Master
The ROS nodes are typically independent programs that can run concurrently on several systems. The ROS Master provides naming and registration services to the nodes in the ROS system. It tracks publishers and subscribers to the topics. Communication is established between the nodes by the ROS Master.
The role of the Master is to enable individual ROS nodes to locate one another. The most often used protocol for connection is the standard Transmission Control Protocol/Internet Protocol (TCP/IP) or Internet Protocol called TCPROS in ROS. Once these nodes are able to locate one another, they can communicate with each other peer-to-peer.
One responsibility of the Master is to keep track of nodes when new nodes are executed and come into the system. Thus, the Master provides a dynamic allocation of connections. The nodes cannot communicate however until the Master notifies the nodes of each other's existence. 
