#!/bin/bash

s0="\033[1;30m" b0="\033[1;40m"
s1="\033[1;31m" b1="\033[1;41m"
s2="\033[1;32m" b2="\033[1;42m"
S3="\033[1;33m" b3="\033[1;43m"
s4="\033[1;34m" b4="\033[1;44m"
s5="\033[1;35m" b5="\033[1;45m"
s6="\033[1;36m" b6="\033[1;46m"
s7="\033[1;37m" b7="\033[1;47m"
r0="\033[00m"   r1="\033[1;00m"

pdf_unlockr() {
  clear
  echo
  echo
  echo
  printf "              ${b2} YOU ARE IN PDF CRACK DIROCTRY${r0}\n"
  echo
  echo
  while true; do 
  printf "  ${s5} ENTER YOUR PDF FILE PATH :${r0}"
  read file_path
  echo
  printf "  ${s5} ENTER YOUR PASSWORD FILE PATH :${r0}"
  read pass_path
  # chek file found in system
    if [[ ! -f $file_path || ! -f $pass_path ]]; then
    echo
    printf "  ${s1} OPPS!!! THE FILE DOES NOT FOUND ❌️❌️❌️${r0}\n"
    else
    echo 
    printf "  ${s2} TWO FILE ARE FOUND 🟡🟡🟡${r0}\n"
    sleep 1
    break
  fi
  done
  clear
echo
echo
echo
pass_no=$(wc -w $pass_path | awk '{print $1}')
count=1

  printf "                   ${b7}${s1}CHECKING PASSWORDS${r0}\n"
  sleep 1
 # cracking section
 while read -r pass; do
printf "${s1}[*] ${s6}TRYING... ${r0}${s1}: ${s4}${count} ${s1}:: ${s4}${pass}\n"
qpdf -password=$pass -decrypt $file_path out.pdf > /dev/null 2>&1
if [ $? == '0' ]; then 
 printf "${s2}SUCESSFULLY CRACKED!!${r0} ${s4}password is : ${s1}${pass}${r0}\n"
 echo
  printf "${s2}CRACKED FILE SAVED IN OUT.PDF${r0}\n"
 break 
 elif [ ${count} == ${pass_no} ]; then 
 echo 
 printf "${s1}[!]FAILD TO CRACK. PLEASE TRY WITH ANOTHER PASSWORD LIST${r0}\n" 
 fi
count=$(( count+1 ))
 done < $pass_path
}
 
