# 易速智店
> 易速智店 - 全平台实现最小 OMS+WMS，将小微商品管理成本降至零，为小微经济注入活力与动力  



## 背景
> 基于国家小微经济发展规划政策，融通小微商业星火资源 
* 市场：小微经济体量大，需求强
* 政策：国家大力支持小微经济，尤其是地摊经济的发展
* 需求：市面上大部分`ERP`过于臃肿，不适合小微经济使用

## 原理流程

isu简化了整个ERP系统，将其简单的抽象为两个核心功能，OMS订单系统和WMS库存系统。

整个系统简化成了这个样子：  
(atomgit似乎不能显示mermaid)
```mermaid
---
title: 易速智店 项目架构
---
flowchart LR

    subgraph backend
        subgraph Global-DB
            商品 --> |log| 商品操作记录
            系统设置 --> |log| 系统操作记录
        end
    end

    subgraph OMS
        subgraph OMS-DB
            订单 --> |log| 订单操作记录
            用户 --> |log| 用户操作记录
        end
    end

    subgraph WMS
        subgraph WMS-DB
            库存 --> |log| 库存变更记录
        end
    end

    subgraph frontend
        订单操作 --> |操作订单| 订单
        库存操作 --> |操作库存| 库存
        商品操作 --> |操作商品| 商品
        其他操作 --> |其他系统设置操作| 系统设置
    end
```

<img src="https://mermaid.ink/svg/pako:eNqdk0FL40AUx79KeOemJE3TxBw8LIKXLQt6ECSXaTO1xXSmxAmrtgUFFS_ioXa3i4vinvayQVCUbel-miat32LTjLUTLcLunCa_95-8_3szrwll6mCwQJZlm7Aac7ElRb3O08F19K0f9r9KTze_x5dBdPUQXR3ZJJFVXPq5XEUekz6u2cQmUrx2_NKWhxpVqYTK25g4nKYiqy4tIVde-TCPTVfYPQk7h5IsL0stl261nkHUORsNv0-C23DYTR8Y3w3Gg-tJ8Gc8DIRjHC8-9mIo2bxy_Km4vsBtTN9YnQQ_wrOukJODd6xe_IxOH0WTCfgPkxsLTW4sMBn2O-GvntjPBITnvejy_p9yVjxKWOouxXp5hlkpUz7rx1zPU7_Vcz6zJuiFq0_pEz57GoL--GE0-CLqORGfCI-2Us_mpWbIQB17dVRz4hloTrENrIrr2AYr3jq4gnyX2WCTdixFPqPre6QMFvN8nAG_4SCGV2oo7lcdrApyd2LaQGST0vk3dmqMekU-Z8m4JRqwmrALlmxqZlZRFdNQdF3N63kzA3tg5fRCNqct5ZR8QTVVQ9PaGdhP_qpmFSOf0w1FMwtLulowtPZf34yJFA" alt="" title="Img"/>

但是，麻雀虽小，五脏俱全，对于小微商业交易来说完全够用。

## 项目目录

- 后端
  - server - 服务器版
  - localserver - 本地服务版
- 前端
  - Web - 网站版
  - Desktop APP - 桌面版
  - Mobile APP - 手机版
- 数据库
  - MySQL（适用于服务器版）
  - SQLite（适用于服务器版和本地服务版）

<!-- ## 运行说明
> 说明如何运行和使用你的项目，建议给出具体的步骤说明
* 操作一
* 操作二
* 操作三  



## 测试说明
> 如果有测试相关内容需要说明，请填写在这里  



## 技术架构
> 使用的技术框架或系统架构图等相关说明，请填写在这里  


## 协作者
> 高效的协作会激发无尽的创造力，将他们的名字记录在这里吧 -->