. ./config.ini

while [ true ] ; do
	wget http://www.minsk.the.by -q index.html
	grep -Po -m 1  '(?<=<td><p>)\+\w*?(?=</p></td>)' 'index.html'
	rm index.html
	sleep $SleepTime
done
