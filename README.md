<!-- GETTING STARTED -->
## Getting Started

`TP-LINK TL-WN722N `

### Installation

_Use these commands to get the adapter working on Kali for packet injection and monitoring._
* <b>commands:</b>
```sh
sudo apt update
```

```sh
sudo apt upgrade
```
```sh
sudo apt install bc
```
```sh
sudo apt-get install build-essential 
```
```sh
sudo apt-get install libelf-dev 
```
```sh
sudo apt-get install linux-headers-`uname -r`
```
```sh
sudo apt install dkms
```
```sh 
sudo rmmod r8188eu.ko
```
```sh
git clone https://github.com/KanuX-14/rtl8188eus.git
```
```sh
cd rtl8188eus
```
```sh
sudo -i
```
```sh
echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
```
```sh
exit
```
```sh
sudo reboot
```
```sh
sudo apt update
```
```sh
cd rtl8188eus
```
```sh
sudo make
```
```sh
sudo make install
```
```sh
sudo modprobe 8188eu 
```
```sh
sudo reboot
```

* <b>To enable Monitor mode and test packet injection:</b>
```sh
sudo ifconfig wlan0 down
```
```sh
sudo airmon-ng check kill
```
```sh
sudo iwconfig wlan0 mode Monitor
```
```sh
sudo ifconfig wlan0 up
```
```sh
iwconfig
```
```sh
sudo aireplay-ng --test wlan0
```
