# cloud-native-project
# ☁️ Cloud-Native Music Platform (Kubernetes)

## 📌 项目简介
本项目基于 Kubernetes 构建云原生音乐服务平台，集成 Web 音乐服务、Flask API、Redis 缓存，并实现自动扩容、配置管理、持久化存储及公网访问。

支持从本地 Minikube 环境迁移至云服务器（k3s），通过 Ingress + 域名实现公网访问。

---

## 🏗️ 系统架构

用户请求流程：

User → Ingress → Service → Pod（Flask / Music / Redis）

核心组件：
- Flask：后端 API 服务
- Music：Web 音乐播放器
- Redis：缓存服务
- Ingress：统一入口（域名路由）
- HPA：自动扩容
- PVC：数据持久化

---

## 🚀 功能特性

- ✅ 多服务容器化部署（Flask / Music / Redis）
- ✅ Kubernetes 服务编排（Deployment + Service）
- ✅ Ingress 域名访问（支持子域名）
- ✅ HPA 自动扩容（基于 CPU）
- ✅ ConfigMap 配置管理
- ✅ Redis 持久化存储（PVC）
- ✅ 一键部署脚本（deploy.sh）
- ✅ 支持云服务器（k3s）部署

---

## 📁 项目结构
cloud-native-project/  
├── docker/  
├── k8s/  
├── scripts/  
├── docs/  
└── README.md

---

## ⚙️ 快速部署

一键部署
./scripts/deploy.sh

查看状态
./scripts/status.sh

清理资源
./scripts/clean.sh

## 🌐 访问方式
Flask: http://jiangnan10.online  
Music: http://music.jiangnan10.online

## 📈 自动扩容演示
kubectl get hpa  
kubectl get pods -w

## 🧠 技术亮点
-使用 HPA 实现服务弹性伸缩  
-使用 ConfigMap 解耦配置与代码  
-使用 PVC 实现数据持久化  
-使用 Ingress 实现多服务统一入口  
-实现从本地到云环境的无缝迁移

## 📌 适用场景
-云原生应用开发  
-Kubernetes 学习与实践  
-微服务架构入门项目
