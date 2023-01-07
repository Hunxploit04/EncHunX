#!/bin/bash
#===========================
#|| DiLarang recode tools ||
#|| Tanpa IZIN adminnya!! ||
#|| No   WA  0895327985339||
#===========================
 
clear
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
#Buat warna tools
#=============================
#Buat Baner Logo
#=============================
echo -e $green'''
 _______  __    _  _______  __   __  __   __  __    _  __   __ 
|       ||  |  | ||       ||  | |  ||  | |  ||  |  | ||  |_|  |
|    ___||   |_| ||       ||  |_|  ||  | |  ||   |_| ||       |
|   |___ |       ||       ||       ||  |_|  ||       ||       |
|    ___||  _    ||      _||       ||       ||  _    | |     | 
|   |___ | | |   ||     |_ |   _   ||       || | |   ||   _   |
|_______||_|  |__||_______||__| |__||_______||_|  |__||__| |__|

            © Author HunX04 | Encrypth Tools 2023
'''
#=============================
#Buat List Menu
echo -e $white"==============================================================="
echo -e $white"||                 $green TOOLS   ENKRIPSI   FILE                 $white ||" 
echo -e $white"==============================================================="
echo -e $white"||       [ $yellow 01 $white ]  $green Enkripsi dengan Base64      $white ||" 
echo -e $white"||       [ $yellow 02 $white ]  $green Enkripsi dengan SHC         $white ||" 
echo -e $white"||       [ $yellow 03 $white ]  $green Enkripsi dengan Md5         $white ||" 
echo -e $white"||       [ $yellow 04 $white ]  $green Enkripsi dengan SHA         $white ||" 
echo -e $white"||       [ $yellow 00 $white ]  $green Keluar Tools !              $white ||" 
echo -e $white"==============================================================="
echo -e $white"||               $green PILIH  ENKRIPSI  01 - 00 $yellow !               $white ||" 
echo -e $white"==============================================================="
echo ""
read -p ">> user@`whoami`$ " num
#Membuat kondisi 
if [ $num = 01  ]
    then
        read -p "Masukan Nama Script mu : " sc
            echo -e $green"sedangan memperoses !"
                sleep 3
                    base64 $sc > hasil-enkripsi/$sc.b64
                    sleep 5
                        echo -e $white"Proses enkripsi $sc Selesai... "
                        echo ""
                        
fi
                        if [ $num = 02  ]
                            then
                                read -p "Masukan Nama Script mu  : " sc
                                    echo -e $green"sedangan memperoses !"
                                        sleep 3
                                            shc -f $sc -o hasil-enkripsi/snc-shc
                                            sleep 5
                                                echo -e $white"Proses enkripsi $sc Selesai... "
                                                echo ""
                                                
                        fi

                        if [ $num = 03  ]
                            then
                                read -p "Masukan Nama Script mu  : " sc
                                    echo -e $green"sedangan memperoses !"
                                        sleep 3
                                            md5sum $sc > hasil-enkripsi/$sc.md5
                                            sleep 5
                                                echo -e $white"Proses enkripsi $sc Selesai... "
                                                echo ""
                                                
                        fi

                        if [ $num = 04  ]
                            then
                                read -p "Masukan Nama Script mu  : " sc
                                    echo -e $green"sedangan memperoses !"
                                        sleep 3
                                            sha256sum $sc > hasil-enkripsi/$sc.sha256
                                            sleep 5
                                                echo -e $white"Proses enkripsi $sc Selesai... "
                                                echo ""
                                                
                        fi

                          if [ $num = 00  ]
                            then
                               echo ""
                                    echo -e $green"Terimakasih Telah Menggunakan Tools Ini ^_^"
                                    sleep 2
                                    exit
                        fi
#Pertanyaan Y/N
                        sleep 2
                            read -p "Mau Enkripsi lagi gak cuy ( Y/N ) : " oyeh
                                if [ $oyeh = Y ] || [ $oyeh = y ]
                                    then
                                        echo -e $green"Kembali Ke menu awal !"
                                        sleep 1
                                        ./enc.sh
                                fi


                                if [ $oyeh = N ] || [ $oyeh = n ]
                                    then 
                                        echo -e $green"Keluar dari tools"
                                        sleep 1
                                        exit 
                                fi
