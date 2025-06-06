#set heading(
  numbering: "1."
)

*NAME*: Vaishnav Sabari Girish

*USN*: 22BTREC021

*DEPT*: ECE


The given mission is the following: 

*Scenario*: A flood has hit a town and all of it's residents have fled to the rooftops of their houses. 

*Mission*: Create 2 drones, a Scouting drone and a delivery drone. 

The Scouting drone is responsible for finding the location of the survivors and geotag them. 

The delivery drone then drops the emergency aid kit on the geotagged locations. 


= Literature review

Drone play a crucial role in disaster management, significantly enhancing capabilities in information collection, delivery of essential items and many more. 

== SCOUTING DRONE

The scouting drone scans the whole area and then geotags the locations where the survivors were found. This can be done using Thermal imaging camera for better accuracy or using Machine Learning models like YOLO @human-detection

=== Functions of Scouting drone 

1. *Information Gathering and Surveillance*: Drones are highly efficient for gathering information during or in the aftermath of a disaster as researched in @disaster-blessem. This includes monitoring the situation , performing surveillance , mapping affected areas , assessing damage, and locating victims for Search and Rescue (SAR) operations @role-of-drones

==== Survivor Detection

- Drones can search for live victims who are buried under rubble due to a cave-in or some other incident using sensors like heat sensors , audio sensors etc. @role-of-drones
- The use of *Thermal Imaging Camera* is recommended for detecting human shapes through body heat. This is sometimes more accurate than direct video processing since it differentiates based on body heat and not shape. @uav-dm-dl
- Studies have shown success in detecting human dummies and translating pixel coordinates to real-world coordinates for efficient SAR operations. @applications-of-drone-dm
- Audio processing can also be used for human detection at disaster sites by mounting array microphones on UAVs. @applications-of-drone-dm

==== Geotagging and Mapping 

- Drones can rapidly acquire high-resolution aerial photographs to assess disaster impact, reducing labour needs for surveying affected areas and providing timely information for disaster mitigation. @humanitarian-drones
- Orthophotos (Geometrically corrected aerial photos) created from drone image data can be overlaid with Google Maps to assess the current extent of destruction. @disaster-blessem
- Image processing techniques, including edge detection, can help in measuring water levels and identifying landmarks such as houses and buildings to locate stranded people. @post-flood

==== Communication for Information Transfer 

The scouting drone would need robust communication capabilities to transmit the geotagged survivor locations and imagery back to a ground control station or directly to the delivery drone. We can transmit the geotagging data as a *.kml* file which consists of the co-ordinates of the geotagged survivors. @uav-comm-1

The delivery drone reads the *.kml* file and then flies to the co-ordinates and drops the emergency aid kit. 


== DELIVERY DRONE

The delivery drone's function to drop packages in geotagged areas is a direct application of drones in humanitarian aid. @uav-for-humanitarian-delivery

=== Transportation and delivery of supplies 

Drones can be a highly useful transportation mode for humanitarian logistics (HL), facilitating the fast delivery of essential items to remote and disconnected locations. @humanitarian-drones

- Drones have successfully transported items like Automated External Defibrillators (AEDs), medical products (blood derivatives, pharmaceuticals), snake bite anti-venom, blood samples, insulin, and emergency food. @uav-for-humanitarian-delivery @uav-healthcare. One Japanese UAV (M1000) was able to transport 17 kg of goods to a destination during simulated disasters @applications-of-drone-dm
- They can deliver items quickly, preventing spoilage of necessities and minimising loss of human lives. @humanitarian-drones
- The payload release mechanism is a key component for this functionality. If the automatic release mechanism fails, manual dropping from the pilot's RC controller or Ground Control Station (GCS) is an option. @uav-for-humanitarian-delivery

=== Overcoming Obstacles

Drones can bypass traffic and geographical barriers like flooded areas, delivering critical medical supplies swiftly and efficiently. They offer a versatile solution when infrastructure is damaged or roads are impassable. @uav-healthcare @humanitarian-drones

=== Operational Benefits 

Delivery drones offer significant advantages in timeliness, flexibility, and cost-effectiveness compared to traditional methods. Their high speed can reduce overall HL costs and improve service levels. @humanitarian-drones


== Hardware and Software Configuration

- The major challenge is to find the optimum configuration between the hardware and software for disaster situations. @uav-for-humanitarian-delivery. 
- The delivery drone requires a reliable payload release mechanism.

== Communication and Co-ordination 

- Maintaining robust communication between the Scouting Drone, Delivery drone and Ground Control Station (GCS) is essential. @uav-comm-1
- Wireless communication among drones can create a Flying Ad Hoc Network (FANET), enabling data exchange and integration with Geographic Information Systems (GIS) for disaster management. @humanitarian-drones
- AI and machine learning can be used to improve efficiency, resilience, and robustness in drone communication and control, assisting in path planning and optimising energy usage. @uav-comm-1

== Challenges and Limitations 

- Battery life and flight range are significant limitations for both types of drones. This means careful planning of routes, or battery swapping might be needed for extended operations. @role-of-drones
- Adverse weather conditions such as heavy rain, strong winds, and low visibility can significantly impact drone performance and flight operations. Waterproofing electronic components is advised. @applications-of-drone-dm
- Payload capacity of delivery drones can be restrictive, typically designed for small, high-value, low-mass items. @humanitarian-drones
- The reliability of communication structures can be inconsistent, potentially hindering real-time image transmission. In such cases, information might need to be stored on the drone and transmitted later. @role-of-drones
- Damage assessment algorithms using AI still need improvement, especially for reconstructing collapsed buildings from drone imagery. @disaster-blessem

== Optimization

- Route optimisation for UAVs can provide maximum area coverage in minimum time and cost. @post-flood
- AI-based algorithms can optimise various functions and minimise computational time for tasks like flood prediction, hazard analysis, and identifying routes. @post-flood @applications-of-drone-dm


#bibliography("./references.bib")

