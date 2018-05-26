lsof -n -i:4444 | grep LISTEN | awk '{ print $2 }' | uniq | xargs kill -9
lsof -n -i:5561 | grep LISTEN | awk '{ print $2 }' | uniq | xargs kill -9
lsof -n -i:5553 | grep LISTEN | awk '{ print $2 }' | uniq | xargs kill -9
lsof -n -i:5554 | grep LISTEN | awk '{ print $2 }' | uniq | xargs kill -9
lsof -n -i:8080 | grep LISTEN | awk '{ print $2 }' | uniq | xargs kill -9
