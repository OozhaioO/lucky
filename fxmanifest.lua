-- fxmanifest.lua
fx_version 'cerulean' -- 適用的版本 (cerulean 是最新的)
game 'gta5'          -- 遊戲類型 (GTA V)

-- 資源的基本信息
author 'YourName'           -- 作者名
description '搶紅包囉'       -- 資源描述
version '1.0.0'             -- 資源版本

-- 客戶端腳本 (Client Scripts)
client_scripts {
    'client.lua'            -- 主程式
}

-- 服務端腳本 (Server Scripts)
server_scripts {
    'server.lua'            -- 主程式
}

-- 共用腳本 (如果需要 Client 與 Server 共用)
shared_scripts {
    'config.lua',           -- 配置檔案
    '@es_extended/imports.lua'
}

