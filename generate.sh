#!/bin/bash
jenerator(){
# color codes
s0="\033[1;30m" b0="\033[1;40m"
s1="\033[1;31m" b1="\033[1;41m"
s2="\033[1;32m" b2="\033[1;42m"
S3="\033[1;33m" b3="\033[1;43m"
s4="\033[1;34m" b4="\033[1;44m"
s5="\033[1;35m" b5="\033[1;45m"
s6="\033[1;36m" b6="\033[1;46m"
s7="\033[1;37m" b7="\033[1;47m"
r0="\033[00m"   r1="\033[1;00m"

clear
echo
echo
printf "                 ${b3}WELCOME EMORA PASSWORDS ${r0}\n"
echo
echo

printf "${s6}             YOU CREATE PASSWORD LIST HEAR${r0}\n"
echo

printf "${s4} ENTER YOUR PASSWORD MINIMUM LETTER LEGTH :${r0}"
read maximum
echo
printf "${s4} ENTER YOUR PASSWORD MAXIMUM LENGTH :${r0}"
read minimum
echo
printf "${s2} ENTER YOUR PASSWORD ADDING LETTERS ${s1}EG [a,b,c,d,1,2,3,4..]${r0}"
read letters 
echo 
printf "${s6} ENTER OUT PUT FILE NAME :${r0}"
read output

wordlist -m $minimum -M $maximum -o $output -v $letters > /dev/null 2>&1
if [[ $? == '0' ]]; then
printf "${s5} YOU SUSCESS FULLY CREATED PASSWORD LIST ${r0}\n"
else
printf "${s1} ONLY ALLOWED TEXT AND NUMBERS ${r0}\n"
fi
}
