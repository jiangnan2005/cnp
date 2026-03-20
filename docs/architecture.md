# 系统架构

## 整体架构

用户 → Ingress → Service → Pod

## 组件说明

- Ingress：负责域名路由
- Service：服务发现与负载均衡
- Pod：运行具体服务（Flask / Music / Redis）

## 技术亮点

- HPA 自动扩容
- PVC 数据持久化
- ConfigMap 配置管理
