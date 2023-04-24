REMOTE_HOST=wakizaka24@wakizaka24.sakura.ne.jp
PATH_TO_REPLACE=/home/wakizaka24/www/reversi
SECURITY_FILE_PATH=/Users/ryota32/pc_data/secret_data
ssh $REMOTE_HOST mkdir $PATH_TO_REPLACE
ssh $REMOTE_HOST rm -rf $PATH_TO_REPLACE/*
cd ../reversi
for FILE in `ls -A | grep --line-buffered -v .DS_Store`; do
    rsync -a --exclude .DS_Store ${FILE} $REMOTE_HOST:$PATH_TO_REPLACE
done
scp $SECURITY_FILE_PATH/php/security_info.php $REMOTE_HOST:$PATH_TO_REPLACE/php/security_info.php
open https://wakizaka24.sakura.ne.jp/reversi/
open https://wakizaka24.sakura.ne.jp/reversi/php/info.php
open https://wakizaka24.sakura.ne.jp/reversi/php/db_connection_test.php