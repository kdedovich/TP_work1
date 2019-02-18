#!/bin/bash
#первый аргумент - название директории, второй аргумент - название архива 
namedir=$1
arh=$2

#проверяем, не было ли такой папки если. Если была удаляем
if [ -e "$namedir" ]
then
        rm -rf $namedir
fi
mkdir $namedir

#считываем разрешения и записываем в список их имена
shift
shift
flist=""
while [ -n "$1" ]
do
        flist="${flist} `find -name "*.$1"`"
        shift
done                                                  

