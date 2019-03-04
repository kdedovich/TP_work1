#!/bin/bash 
IFS=$'\n'
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
num=1
while [ -n "$1" ]
do
        flist="`find -type f -name "*$1"`"
        #даём новые имена, чтобы справится с одинаковыми именами
        for namef in $flist
        do
                oldf=`basename $namef`
                newf=$num"_"$oldf
                cp "$namef" "$namedir"/"$newf"
        ((num++))
        done
        shift
done

tar cf  $arh.tar $namedir
echo "done"

