#!/bin/bash

file_name=$1

# -------作成するファイル------
# 1. hdlファイル
# 2. tstファイル
# 3. cmpファイル
# ----------------------------

# 1. hdlファイル
file_extension="hdl"
template_hdl="templates/template_hdl.txt"  # テンプレートファイルのパスを設定
content_hdl=$(cat "$template_hdl")  # テンプレートファイルから内容を読み込む
file_path_hdl="$file_name.$file_extension"
echo "$content_hdl" > "$file_path_hdl"
echo "$file_path_hdl created successfully at $(pwd)"

# 2. tstファイル
file_extension="tst"
template_tst="templates/template_tst.txt"  # テンプレートファイルのパスを設定
content_tst=$(cat "$template_tst")  # テンプレートファイルから内容を読み込む
file_path_tst="$file_name.$file_extension"
echo "$content_tst" > "$file_path_tst"
echo "$file_path_tst created successfully at $(pwd)"

# 3. cmpファイル
file_extension="cmp"
template_cmp="templates/template_cmp.txt"  # テンプレートファイルのパスを設定
content_cmp=$(cat "$template_cmp")  # テンプレートファイルから内容を読み込む
file_path_cmp="$file_name.$file_extension"
echo "$content_cmp" > "$file_path_cmp"
echo "$file_path_cmp created successfully at $(pwd)"
