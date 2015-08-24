pushit() {
  scp -o "StrictHostKeyChecking no" -i ~/.ssh/id_rsa -r $1 ec2-user@ec2-54-175-232-185.compute-1.amazonaws.com:Dev/titan/
}

for f in  README.md _build config deps lib mix.exs mix.lock priv push.sh run.sh start.sh stop.sh test titan web
do
  pushit $f
done

