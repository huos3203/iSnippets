#! /bin/bash
mv ~/Library/Developer/Xcode/UserData/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets.backup

# rm ~/Library/Developer/Xcode/UserData/CodeSnippets

basepath=$(cd `dirname $0`; pwd)
echo "当前cd的目录名："`basename $(pwd)`
echo "sh脚本文件的绝对路径：$basepath"
ln -s ${basepath}/Xcode ~/Library/Developer/Xcode/UserData/CodeSnippets
echo "done"

