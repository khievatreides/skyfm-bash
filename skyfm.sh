 filename > tophits.sh
#!/bin/bash  
# created by I Wayan Ryandi
# @ryandisaskara at august 08, 2013
#my_first_useful_bash_script__lol
# use mplayer as slave mode and retrieve the list(continous) of (the songs) the stream by playlist 
mplayer="mplayer -slave -playlist"
baseurl=" http://listen.sky.fm"
pls=".pls?"
#this key was my sky.fm access key , if you wanna get one, you must registered first at sky.fm.
key="d2e0355098e59a091d594e3d" 
bitrate="public1"
#if you want to change the bitrate into 90K MP3 quality you just change the bitrate variabel to "public3"
#the public1 just stream 40k bitrate with AAC format :))
#the higher the bitrate,  higher bandwith will needed too.

channel=(
 "1. tophits:tophits"
 "2. 80' dance:80sdance"
 "3. 90's R&B :90srnb"
 "4. 60's Rock:60srock"
 "5. Smooth Jazz:smoothjazz"
 "6. Love music:lovemusic.pls"
 "7. Best Of 80's:the80s"
 "8. Classic Rock:classicrock"
 "9. Smooth Lounge:smoothlounge"
 "10. New Age:newage"
 "11. Solo Piano:solopiano"
 "12. Relaxation:relaxation"
 "13. Mostly Classical:classical"
 "14. Mellow Jazz:mellowjazz"
 "15. Cafe de Paris:cafedeparis"
 "16. 90's Hits:hit90s"
 "17. 80's Rocks Hits:80srock"
 "18. Hits 70's:hit70s"
 "19. Best of 60's:hit60s"
 "20. Soft Rock:softrock"
 "21. Pop Rock:poprock"
 "22. Modern Rock:modernrock"
 "23. Hard Rock:hardrock"
 "24. Metal:metal"
 "25. Modern Blues:modernblues"
 "26. Smooth Jazz 24/7:smoothjazz247"
 "27. Compact Discoveries:compactdiscoveries"
 "28. Vocal Age:vocalnewage"
 "29. Nature:nature"
 "30. Movie Soundtrack:soundtrack"
 "31. Relaxing Excursion:relaxingexcursions"
 "32. Ska:ska"
 "33. Classic Motown:classicmotown"
 "34. Oldies:oldies"
 "35. DreamScapes:dreamscapes"
 "36. Classical piano trio:classicalpianotrios"
 "37. Classical Guitar:guitar"
 "38. Country:country"
 "39. Roots Reggae:rootsreggae"
 "40. Bossa Nova:bossanova"
 "41. Vocal smooth Jazz :vocalsmoothjazz"
 "42. Uptempo Smooth Jazz:uptemposmoothjazz"
 "43. Datempo Lounge:datempolounge"
 "44. Piano Jazz:pianojazz"
 "45. Salsa:salsa"
 "46. World:world"
 "47. Romantica:romantica"
 "48. Alternative Rock:altrock"
 "49. Russian Pop:russianpop"
 "50. Russian Dance hits:russiandance"
 "51. Indie Rock:indierock"
 "52. Dance Hits:dancehits"
 "53. Urban Jamz:urbanjamz"
 "54. Pop Punk:poppunk"
 "55. Classic Rap:classicrap"
 "56. Israeli Hits:israelihits"
 "57. Bebop Jazz:bebop"
 "58. Jazz Classics:jazzclassics"
 "59. American SongBook:americansongbook"
 "60. A beatles Tribute:beatles"
 "61. Jpop:jpop"
 "62. Club Bolliwood:clubbollywood"
 "63. Contemporary Christian:christian"
)

echo "Sky FM Channel List "
echo ""

for listChannel in "${channel[@]}";
do
 channelName="${listChannel%%:*}"
 printf  "%s \n" "$channelName"
done

echo "";

read -p "please select channel "; 
pilihan=$REPLY
channelpilihan="${channel[$((pilihan-1))]}"
metachannel="${channelpilihan##*:}"

$mplayer $baseurl/$bitrate/$metachannel$pls$key

#dont forget to give this script executable permission first at your system by using [chmod +x thisfilename] ))  #you can run this script by execute sh command [sh thisfilename] on your x terminal/konsole.