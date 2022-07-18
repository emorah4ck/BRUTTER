#!/bin/bash

# included connectd files 
. /data/data/com.termux/files/home/BRUTTER/zip-cracker.sh 
. /data/data/com.termux/files/home/BRUTTER/pdf-unlocker.sh 
. /data/data/com.termux/files/home/BRUTTER/generate.sh
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
echo
echo
# main banner 
printf "            ${b4}WELCOME TO EMORA CRACKING TOOL${r0}\n"
echo
printf "  ${s1} THE TOOL IS WORKING TO CRACK ZIP FILE AND PDF FILES ${r0}\n"
echo
printf "   ${s5}DO YOU HAVE A PASSWORD LIST....? ${s1}[yes/no]${r0} ${r0}\n"
echo
# choos options 
printf "   ${s4}ENTER THE OPTION :${r0}"
read opt
echo 
if [[ $opt == 'yes' || $opt == 'YES' || $opt == 'y' ]]; then
printf "   ${s6}OKEY LETS START THE ATTACK${r0}\n "
elif [[ $opt == 'no' || $opt == 'NO' || $opt == 'n' ]]; then
printf "   ${s6}OKEY NOW CREATING PASSWORD LIST TO CRACK PASSWORD \n"
jenerator
else
printf "   ${s6}OPPS!!!!!! ENTER A VALID OPTION\n"
fi
sleep 2
clear
echo
echo
printf "               ${s6}NOW YOU WAND TO CHOOS ATTACK ${r0}\n"
echo
printf "               ${s4}[${r0}${s2}*${r0}${s4}] 1 FOR CRACK TO ${s1}ZIP${r0}\n"
echo
printf "               ${s4}[${r0}${s2}*${r0}${s4}] 2 FOR CRACK TO ${s1}PDF${r0}\n"
echo
printf "    ${s2}ENTER YOUT OPTION ${r0}"
read opt

if [[ $opt == '1' || $opt == '01' ]]; then
  echo
  printf "   ${s4} YOU ENTERED ${opt}${r0}\n"
  sleep 1
  zip_crack
  elif [[ $opt == '2' || $opt == '02' ]]; then
  echo
  printf "   ${s4} YOU ENTERED ${opt}${r0}\n"
  sleep 1
  pdf_unlockr 
  else
  echo
  printf "   ${s4} PLEASE ENTER A VALID OPTION DUDE ${opt}${r0}\n"
fi
