#!/bin/bash

set -e

echo "=============================="
echo "Setting up Big Data Stack..."
echo "=============================="

mkdir -p /BDMG
cd /BDMG

# =============================
# 1. DOWNLOAD KAFKA
# =============================
echo "Downloading Kafka..."
mkdir -p Kafka
cd Kafka

wget -q https://archive.apache.org/dist/kafka/3.6.1/kafka_2.13-3.6.1.tgz
tar -xvf kafka_2.13-3.6.1.tgz

KAFKA_HOME="/BDMG/Kafka/kafka_2.13-3.6.1"

cd /BDMG

# =============================
# 2. DOWNLOAD STORM
# =============================
echo "Downloading Storm..."
mkdir -p Storm
cd Storm

wget -q https://archive.apache.org/dist/storm/apache-storm-2.6.0/apache-storm-2.6.0.tar.gz
tar -xvf apache-storm-2.6.0.tar.gz

STORM_HOME="/BDMG/Storm/apache-storm-2.6.0"

# =============================
# 3. CONFIGURE STORM (IMPORTANT FIX)
# =============================
echo "Configuring storm.yaml..."

STORM_CONF="$STORM_HOME/conf/storm.yaml"

cat > $STORM_CONF <<EOF
storm.zookeeper.servers:
  - "localhost"

nimbus.seeds: ["localhost"]

storm.local.dir: "/tmp/storm"

ui.host: "0.0.0.0"
ui.port: 8080
EOF

cd /BDMG

# =============================
# 4. START KAFKA ZOOKEEPER
# =============================
echo "Starting Kafka ZooKeeper..."
$KAFKA_HOME/bin/zookeeper-server-start.sh -daemon \
$KAFKA_HOME/config/zookeeper.properties

sleep 5

# =============================
# 5. START KAFKA
# =============================
echo "Starting Kafka..."
$KAFKA_HOME/bin/kafka-server-start.sh -daemon \
$KAFKA_HOME/config/server.properties

sleep 5

# =============================
# 6. START STORM SERVICES
# =============================
echo "Starting Storm Nimbus..."
$STORM_HOME/bin/storm nimbus &
sleep 5

echo "Starting Storm Supervisor..."
$STORM_HOME/bin/storm supervisor &
sleep 5

echo "Starting Storm UI..."
$STORM_HOME/bin/storm ui &
sleep 5

# =============================
# DONE
# =============================
echo "=============================="
echo "ALL SERVICES STARTED SUCCESSFULLY"
echo "=============================="

# Keep container alive + usable shell
exec /bin/bash

