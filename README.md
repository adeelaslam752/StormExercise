# 🚀 Apache Storm Exercise: Big Data Environment

This repository provides a complete **Dockerized environment** for exploring **Apache Storm**, a distributed real-time computation system. Whether you are a beginner looking to understand stream processing or an experienced developer testing topologies, this setup offers a comprehensive sandbox.

---

## 📌 Overview

The Docker image encapsulates the entire Apache Storm ecosystem, including:

- **Nimbus** – The master node of Storm  
- **Supervisors** – Worker nodes that execute processing logic  
- **Zookeeper** – Coordination service managing cluster state  
- **Storm UI** – Web-based interface to monitor topologies  

---

## 🧩 Included Logical Views (Applications)

The setup comes pre-configured with the following applications:

1. **Word Count** – A classic stream processing example  
2. **Hash Partitioning** – Demonstrates how data is distributed across tasks  
3. **Window Join** – Implements time-based and count-based window operations  

---

## 🏗️ Architecture

This environment is configured as a **single-node setup** for ease of use, but it is designed with scalability in mind.

- **Scalability**: You can extend this to a distributed cluster by running services on different nodes:
  - One node for **Nimbus/Zookeeper**
  - Multiple nodes for **Supervisors**

---

## ⚙️ Getting Started

Follow these steps to build and run the environment:

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/adeelaslam752/StormExercise.git
cd StormExercise
