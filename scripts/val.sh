#!/usr/bin/env bash
set -e

WEIGHTS=${1:-runs/ppe_baseline/weights/best.pt}
DATA=${2:-configs/ppe.yaml}

yolo detect val \
  model="$WEIGHTS" \
  data="$DATA" \
  imgsz=640
