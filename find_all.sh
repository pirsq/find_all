#!/bin/bash

# Search all default cPanel docroots and cat results
# to a time-stamped log

cPusers=($(cat /etc/trueuserowners | cut -d: -f1))
file_list=('readme.htm' 'default.htm' 'phpinfo.php' '_info.php')

printf "\nThis script was last ran on $(date -R) \n\n" >> found_files.txt


findFiles(){
    for user in "${cPusers[@]}"
    do
        for file in "${file_list[@]}"
        do
            find -O2 "/home/$user/public_html/$file" -type f 2>/dev/null >> found_files.txt
        done
    done
}


if [ -f 'found_files.txt' ]; then
    $(> 'found_files.txt')
    printf "\nThis script was last ran on $(date -R) \n\n" > found_files.txt
fi


findFiles
cat 'found_files.txt'
