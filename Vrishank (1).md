# Integration of Dual-Quadcopter Systems with Ground Control Station for Disaster Management

## 1. Introduction

Disaster management increasingly leverages unmanned aerial vehicles (UAVs) to address real-time challenges such as search, rescue, and payload delivery in areas inaccessible to human responders. This report reviews literature and methods focusing on the integration of dual quadcopter systems—(a) reconnaissance/scanning drone (Drone A) and (b) a payload delivery drone (Drone B)—with a Ground Control Station (GCS). A major focus is placed on two primary communication architectures: centralized communication via GCS and decentralized peer-to-peer (P2P) communication between drones.

---

## 2. Mission Workflow and Data Flow

### 2.1 Initial Mission Planning

The mission starts at the Ground Control Station where Drone A is assigned a scanning mission. Upon detection of a survivor or target zone:

- An audio message such as **“Aid en route”** is played to reassure any potential victim.
- A **geographical tag** with an identification number is generated and sent back to the GCS.
- The **GCS middleware** processes this data, assigns a priority level, and triggers the next stage: delivering aid via Drone B.

---

## 3. Data Transfer to Ground Control Station (GCS)

Communication relies on either MAVLink messages or custom telemetry packets transferred via:

- 915 MHz **SiK telemetry radios**
- **LTE modules**
- **Wi-Fi** (ad-hoc or mesh networks)

Once the GCS receives the data, it evaluates the urgency and determines **waypoints or drop coordinates** for the delivery drone.

---

## 4. Drone-to-Drone Communication

Two models are commonly implemented:

### 4.1 Centralized Communication

In this conventional setup:

- Drone A communicates findings to the GCS.
- The GCS processes and forwards coordinates to Drone B.

**Advantages:**

- Simplified control  
- Better operator oversight

### 4.2 Decentralized Communication

Here, Drone A sends location data directly to Drone B and GCS simultaneously.

**Advantages:**

- Real-time, autonomous coordination  
- Reduces GCS load and improves response speed

> This method demands a higher level of autonomy and robust onboard processing in both drones.

---

## 5. Ground Control Station (GCS)

**Software Options:**

- QGroundControl  
- Mission Planner (ArduPilot, iNav)

**Connectivity Tools:**

- SiK telemetry radios (915 MHz)  
- Wi-Fi mesh network

**Primary Functions:**

- Uploading and modifying mission plans  
- Live monitoring of telemetry and camera feed  
- Coordination hub between scanning and delivery drones

---

## 6. Advanced Features (Optional)

To improve intelligence and autonomy:

- **ROS Integration:** Enables communication between drone systems using ROS topics, useful when drones use onboard Linux systems like Raspberry Pi or Jetson Nano.

- **Real-Time Object Detection:** Use of **TensorFlow** or **YOLOv5** models to dynamically identify survivors or drop zones.

- **Autonomous Handshake Protocols:** Custom logic such as:
  - `"Ready"` – Drone B signals it is ready
  - `"Data Sent"` – Drone A shares target coordinates
  - `"Mission Start"` – Drone B initiates delivery mission

---

## 7. Testing and Simulation

Before real-world deployment, simulations ensure system reliability and performance:

- **Gazebo** or **SITL (Software-In-The-Loop)** for environment and drone behavior simulation
- **QGroundControl** paired with **MAVProxy** for mission emulation

Simulated coordination between Drone A and B ensures the timing and data transfer protocols work under varying conditions.

---

## Conclusion

Integrating two specialized drones with a GCS presents an effective and scalable solution for real-time disaster response. While centralized systems offer simplicity, decentralized setups enhance autonomy and speed. Combined with advanced tools like **ROS** and **YOLO**, such systems hold immense potential in modern emergency logistics and rescue operations.

