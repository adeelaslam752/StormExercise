# Apache Storm Exercise — Dockerized Big Data Environment

A fully containerized sandbox for exploring **Apache Storm**, the distributed real-time computation framework. This environment bundles the entire Storm cluster into a single Docker image so you can start experimenting immediately — no manual setup required.

---

## What's Inside

| Component | Role |
|-----------|------|
| **Nimbus** | Master node — coordinates the cluster and distributes work |
| **Supervisors** | Worker nodes — execute your topology logic |
| **Zookeeper** | Coordination service — manages cluster state |
| **Storm UI** | Web dashboard — monitor running topologies at `localhost:8080` |

### Pre-built Application Examples

Three topology examples are included out of the box:

- **Word Count** — the classic stream processing "hello world"
- **Hash Partitioning** — demonstrates how data is distributed across tasks
- **Window Join** — implements time-based or count-based windowed stream joins

---

## Architecture

This is a **single-node setup** designed for learning and experimentation. When you're ready to scale, the same configuration can be distributed across multiple hosts — run Nimbus and Zookeeper on one node, and Supervisors on as many worker nodes as you need.

---

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/adeelaslam752/StormExercise.git
cd StormExercise
```

### 2. Build the Docker Image

```bash
docker build -t storm_exercise .
```

### 3. Start the Container

Port `8080` is mapped so you can access the Storm UI from your browser:

```bash
docker run -it -p 8080:8080 storm_exercise /bin/bash
```

### 4. Initialize the Cluster

Inside the container, run the startup script to bring up all services:

```bash
./script.sh
```

![Service startup output](https://github.com/user-attachments/assets/d59d313b-8eaa-4890-ac93-135376138776)

### 5. Verify Running Services

```bash
jps
```

You should see Nimbus, Supervisor, Zookeeper, and the Storm UI processes listed.

![JPS output showing running processes](https://github.com/user-attachments/assets/882d172e-dfc9-41e8-aeac-66fc970520fe)

---

## Running the Example Topologies

All applications are pre-packaged as JARs. First, navigate to the Nimbus Storm folder:

![Navigate to Nimbus folder](https://github.com/user-attachments/assets/f0dc5465-a87f-46e2-9401-a8827c162fcf)

Then submit whichever topology you want to the cluster:

**Word Count**

![Word Count command](https://github.com/user-attachments/assets/c6588464-d69a-46a2-bdd3-23bb767b62bb)

**Window Join**

![Window Join command](https://github.com/user-attachments/assets/a0dfabf3-6035-42a2-9509-e8b3eccdd8a8)

**Hash Partitioning**

![Hash Partitioning command](https://github.com/user-attachments/assets/797c8063-1605-4d2d-b673-5c64906a0d4d)

---

## Monitoring with the Storm UI

Open **http://localhost:8080** in your browser to access the Storm UI dashboard.

**Topology overview** — see all running applications at a glance:

![Storm UI topology list](https://github.com/user-attachments/assets/89938215-787b-4eb4-9785-f7ddf3e686f3)

**Fine-grained details** — drill into individual topologies to inspect bolts, spouts, and throughput metrics:

![Window Join topology detail](https://github.com/user-attachments/assets/81700135-5ac7-4d4e-9031-c5787254fac9)

---

## Support

Found a bug or have a question? [Open an issue](https://github.com/adeelaslam752/StormExercise/issues) on GitHub or reach out directly at **adeelaslam752@gmail.com**.
