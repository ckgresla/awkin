# this simple program prints out a file's name and each line in it, you can use this to "bundle" a dir of files into a single one or take peeks at data in dirs


awk '{ print FILENAME, $0 }' DATA/*

