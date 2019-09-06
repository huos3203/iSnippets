#!/bin/sh

function publish()
{
    git remote -v

    git add .

    msg="rebuilding site `date`"

    if [ $# -eq 1 ]
    then msg="$1"
    fi

    git commit -m "$msg"

    # push source to github

    git push origin head:master

    # come back to blog root
    cd ..
}


cd Xcode
publish

cd XcodeSnips
publish

#总的提交
publish
