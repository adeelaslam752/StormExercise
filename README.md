# Apache Storm Exercise: Big Data Environment

This repository provides a complete Dockerized environment for exploring **Apache Storm**, a distributed real-time computation system. Whether you are a beginner looking to understand stream processing or an experienced developer testing topologies, this setup provides a comprehensive sandbox.

##  Overview

The Docker image encapsulates the entire Storm ecosystem, including:
*   **Nimbus**: The master node of Storm.
*   **Supervisors**: Worker nodes that execute the logic.
*   **Zookeeper**: The coordination service managing the cluster state.
*   **Storm UI**: A web-based interface to monitor your topologies.

### Included Logical Views (Applications)
The setup comes pre-configured with three specific application examples:
1.  **Word Count**: A classic stream processing example.
2.  **Hash Partitioning**: Demonstrating how data is distributed across tasks.
3.  **Window Join**: Implementing time-based or count-based windowed operations.

---

## Architecture
While this is configured as a **single-node setup** for ease of use, it is designed for scalability. 
*   **Scalability**: You can easily extend this to a distributed cluster by running different services on different nodes (e.g., one node for Nimbus/Zookeeper and multiple nodes for Supervisors).

---

##  Getting Started

Follow these steps to build the image and start playing with Storm:

### 1. Clone the Repository
```bash
git clone [https://github.com/adeelaslam752/StormExercise.git](https://github.com/adeelaslam752/StormExercise.git)
cd StormExercise
```
### 2. Build the Docker Image
```bash
docker build -t storm_exercise .
```
### 3. Run the Container
Map port 8080 to access the Storm UI from your browser:
```bash
docker run -it -p 8080:8080 storm_exercise /bin/bash
```
### 4. Initialize the Services
```bash
./script.sh
```
<img width="1047" height="90" alt="Ist" src="https://github.com/user-attachments/assets/d59d313b-8eaa-4890-ac93-135376138776" />

### 5. Verify the services of storm
```bash
jps
```
<img width="341" height="244" alt="2nd" src="https://github.com/user-attachments/assets/882d172e-dfc9-41e8-aeac-66fc970520fe" />

### 6. Run the applications such as Word count, WindowJoin, and HashPartitioning demo 
Submit the application to the leader (Nimbus) node


Locate to Nimbus Storm folder
<img width="504" height="58" alt="3" src="https://github.com/user-attachments/assets/f0dc5465-a87f-46e2-9401-a8827c162fcf" />

Run the WordCount: The application are packaged inot the Jars folder
<img width="1184" height="48" alt="4" src="https://github.com/user-attachments/assets/c6588464-d69a-46a2-bdd3-23bb767b62bb" />
Run the WindowJoin
<img width="1221" height="39" alt="window join " src="https://github.com/user-attachments/assets/a0dfabf3-6035-42a2-9509-e8b3eccdd8a8" />
Run the Partitioning example
<img width="1316" height="49" alt="hashparti9" src="https://github.com/user-attachments/assets/797c8063-1605-4d2d-b673-5c64906a0d4d" />

### 7. Monitoring
 got to http://localhost:8080/

 First observe it applications
 <img width="3638" height="1288" alt="second last" src="https://github.com/user-attachments/assets/89938215-787b-4eb4-9785-f7ddf3e686f3" />
 Observe the fine grainded details 
 <img width="2544" height="1240" alt="WindowJoin" src="https://github.com/user-attachments/assets/81700135-5ac7-4d4e-9031-c5787254fac9" />

 If you need any help just create a issue or ping me at adeelaslam752@gmail.com


 







