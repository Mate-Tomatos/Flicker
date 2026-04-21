#!/bin/bash
cd /data/smx/flicker/data/data/f30k_precomp
echo "[$(date)] Starting download of test_ims.npy..." >> /data/smx/flicker/download.log
kaggle datasets download kuanghueilee/scan-features -f "data/data/f30k_precomp/test_ims.npy" -p . --force 2>&1
if [ -f test_ims.npy.zip ]; then
    unzip -o test_ims.npy.zip && rm test_ims.npy.zip
    echo "[$(date)] test_ims.npy downloaded and extracted" >> /data/smx/flicker/download.log
fi
echo "[$(date)] Starting download of train_ims.npy..." >> /data/smx/flicker/download.log
kaggle datasets download kuanghueilee/scan-features -f "data/data/f30k_precomp/train_ims.npy" -p . --force 2>&1
if [ -f train_ims.npy.zip ]; then
    unzip -o train_ims.npy.zip && rm train_ims.npy.zip
    echo "[$(date)] train_ims.npy downloaded and extracted" >> /data/smx/flicker/download.log
fi
echo "[$(date)] All downloads completed!" >> /data/smx/flicker/download.log
echo "DONE" >> /data/smx/flicker/download.log
