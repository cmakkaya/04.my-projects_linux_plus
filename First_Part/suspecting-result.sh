#!/bin/bash
# cd /mnt/d/02.AWS/My_Projects_işlenen/02.Project-101-Linux-Plus/First_Part
echo "     The List of Instances' IDs which terminated by Serdar user:" > /mnt/c/Users/a/Desktop/suspecting-result.txt
cat event_history.csv | grep -i serdar | grep -i terminateinstance | egrep -o "i-[a-z, A-Z, 0-9]{17}" | sort | uniq | nl -s '. ' | tee -a >> /mnt/c/Users/a/Desktop/suspecting-result.txt

















# Yukarda, egrep -o  yerine  grep -Eo  da kullanabiliriz.
# Kaynak: https://stackoverflow.com/questions/17130299/whats-the-difference-between-grep-e-and-grep-e
# Başına ./ veya bash yazmadan çalışması içinde:  a) export PATH=$PATH:/mnt/d/02.AWS/My_Projects_işlenen/02.Project-101-Linux-Plus/First_Part
# b) .bashrc yi aç  en alta:  PATH="/mnt/d/02.AWS/My_Projects_işlenen/02.Project-101-Linux-Plus/First_Part":$PATH  ekle, kaydet, ve  linux oturumunu kapatıp tekrar aç.
# Kaynak: https://linux-dersleri.github.io/docs/temel_linux/3.html
# nl : number lines yani satırları numaralandır anlamına gelen ifadenin baş harflerinden almaktadır.