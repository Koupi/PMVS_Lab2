
#!/bin/sh

while [ true ]
do
	wget -q meteo.by
	echo `grep 'class="t "' -A 6 index.html | tail -n 1 | tail -c 5`
	rm index.html
	sleep `cat ./config | awk -F "=" {'print $2'}`
done
