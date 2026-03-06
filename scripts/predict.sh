#!/usr/bin/env bash
set -e

WEIGHTS=${1:-runs/ppe_baseline/weights/best.pt}
SOURCE=${2:-data/images}   # 你可以换成一张图片/一个文件夹/一个视频

yolo detect predict \
  model="$WEIGHTS" \
  source="$SOURCE" \
  imgsz=640 \
  conf=0.25 \
  save=True
