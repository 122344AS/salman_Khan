if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/122344AS/salman_Khan /salman_Khan
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /salman_Khan
fi
cd /salman_Khan
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
