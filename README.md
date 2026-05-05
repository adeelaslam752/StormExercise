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
