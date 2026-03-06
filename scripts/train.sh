#!/usr/bin/env bash
set -e

# 修改为你的数据集配置文件路径（后面 Week3 再完善）
DATA=${1:-configs/ppe.yaml}

# 模型大小先用 n/s（快）
MODEL=${2:-yolo11n.pt}

# 输出目录
PROJECT=${3:-runs}
NAME=${4:-ppe_baseline}

yolo detect train \
  data="$DATA" \
  model="$MODEL" \
  imgsz=640 \
  epochs=50 \
  batch=16 \
  device=0 \
  project="$PROJECT" \
  name="$NAME"
