#!/bin/bash
 
# 出力psファイル名
outimg="gmt.ps"

# 描画
gmt pscoast -JM15c -R120/160/30/50 -Ba5f5g10/a5f10g5:."japan": -W -P -Ggreen -S#00FFFF > $outimg

# ps -> png
gmt ps2raster $outimg -E100 -Tg
