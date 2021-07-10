Laravel で作成したアプリを Docker 環境で動作させるサンプル。ローカルのPCでの動作確認向け。

初回起動前（リセット）
```bash
./startup.sh
```

2回目以降
```bash
docker compose up -d
```

起動したら
http://localhost:8888
にてアクセス

コンソールへ入る
```bash
docker exec -it test-app-php /bin/bash
```
