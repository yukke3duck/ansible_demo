# インベントリと変数の設計

## 1. インベントリ構成

インベントリファイル (`inventory`) は、静的インベントリとして以下のようにサーバーをグループ化します。

```ini
[proxyservers]
proxy01 ansible_host=...

[webservers]
web01 ansible_host=...

[all:vars]
# 必要に応じて共通変数を定義
```

## 2. 変数 (group_vars)

各ホストグループや全ホストに適用する変数は `group_vars` ディレクトリで管理します。

- **`group_vars/all.yml`**: 全てのホストに適用される共通変数を定義します。
- **`group_vars/proxyservers.yml`**: プロキシサーバーグループに特有の変数を定義します。（例: HAProxyの設定値など）
- **`group_vars/webservers.yml`**: Webサーバーグループに特有の変数を定義します。（例: IISの設定値など）
```
