echo 'Exercise Build'
mkdir tree0
cd tree0
mkdir folder1 folder2 folder3 folder4
touch file1.txt file2.txt file3.txt system.log
chmod 000 file*.txt
chmod 777 system.log
chmod a+=rw folder1 folder2 folder3 folder4
cd ..
mkdir tree1
cd tree1
mkdir .folder-tree1 .folder-tree2
touch .file-a.txt
cd .folder-tree1
mkdir random tmp
cd tmp
touch README.md
echo -e '\n Ola, td bem?' > README.md
cd ../random/
mkdir random-1 random-2
touch random-1/remove-me.txt random-1/remove-me2.txt random-1/remove-me3.txt
cd random-2
mkdir change-me1 change-me2 change-me3
cd change-me1
touch link1.txt ../change-me2/link2.txt
echo 'jdsak daskjdsakjjkdsakdajsdasjk kjdasjk ads dsadsak' > link1.txt
echo 'skjas dsakjda sda dsa d sa ds ds sa ds  sa das' > ../change-me2/link2.txt
ln link1.txt ../change-me3/some-file1.txt
ln ../change-me2/link2.txt ../change-me3/some-file2.txt
#ln -s link2.txt ../change-me3/link4.txt
#echo -e 'Done \n :)'
echo 'Done'
