# プロキシサーバー仕様

## 1. 概要

- **対象OS**: Ubuntu 22.04
- **Ansible Role**: `haproxy`

## 2. インストールされるソフトウェア

| ソフトウェア | バージョン |
| ------------ | ---------- |
| HAProxy      | (apt最新)  |

## 3. 設定詳細

`haproxy` Roleは、HAProxyをインストールし、以下の仕様で設定します。

- **`haproxy.cfg` の設定:**
    - **frontend:**
        - `web.local` のドメイン名でトラフィックをリッスンする。
    - **backend:**
        - リクエストをWebサーバー (`webservers` グループのホスト) に転送する。
    - **ACL (Access Control List):**
        - 送信元IP `0.0.0.0/0` (Any) からのトラフィックを許可する。（将来的に制限される可能性がある）

## 4. Ansible Role (`haproxy`) のタスク概要

1.  `apt` を使用してHAProxyをインストールする。
2.  `template` モジュールを使用して `haproxy.cfg` を所定の場所に配置する。
3.  HAProxyサービスを起動し、有効化する (`state: started`, `enabled: yes`)。
