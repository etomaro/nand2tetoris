#!/bin/bash

file_name=$1
make_path=$2
# -------作成するファイル------
# 1. hdlファイル
# 2. tstファイル
# 3. cmpファイル
# ----------------------------

main_path=~/Desktop/nand2tetris/projects

# 1. hdlファイル
file_extension="hdl"
template_hdl="$main_path/00/new_rogic_templates/template.hdl"  # テンプレートファイルのパスを設定
content_hdl=$(cat "$template_hdl")  # テンプレートファイルから内容を読み込む
file_path_hdl="$file_name.$file_extension"
echo "$content_hdl" > "$main_path/$make_path/$file_path_hdl"
echo "$file_path_hdl created successfully at $main_path/$make_path/$file_path_hdl"

# 2. tstファイル
file_extension="tst"
template_tst="$main_path/00/new_rogic_templates/template.tst"  # テンプレートファイルのパスを設定
content_tst=$(cat "$template_tst")  # テンプレートファイルから内容を読み込む
file_path_tst="$file_name.$file_extension"
echo "$content_tst" > "$main_path/$make_path/$file_path_tst"
echo "$file_path_tst created successfully at $main_path/$make_path/$file_path_hdl"

# 3. cmpファイル
file_extension="cmp"
template_cmp="$main_path/00/new_rogic_templates/template.cmp"  # テンプレートファイルのパスを設定
content_cmp=$(cat "$template_cmp")  # テンプレートファイルから内容を読み込む
file_path_cmp="$file_name.$file_extension"
echo "$content_cmp" > "$main_path/$make_path/$file_path_cmp"
echo "$file_path_cmp created successfully at $main_path/$make_path/$file_path_hdl"
