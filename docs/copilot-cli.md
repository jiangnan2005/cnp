# Copilot CLI 使用说明

## Copilot CLI 运行环境

Copilot CLI（即 GitHub Copilot Coding Agent）**完全运行在本地机器上**。具体来说：

- 所有文件的读取、修改、创建操作均直接作用于你本地的真实文件系统
- 代码的构建、测试、脚本执行等操作均在本地终端环境中执行
- 安装依赖、运行服务器等操作也直接影响本地环境

---

## Copilot CLI 与本地委托会话的区别

| 特性 | Copilot CLI（编码代理） | 本地委托会话 |
|------|------------------------|-------------|
| 文件修改 | ✅ 修改本地实际文件 | ✅ 修改项目文件 |
| 环境影响 | ✅ 可影响本地环境（安装依赖等） | ❌ 不影响本地环境 |
| 代码运行 | ✅ 在本地机器运行 | ☁️ 通过云端 GitHub 运行 |
| 适用场景 | 需要完整本地环境的复杂任务 | 仅需修改项目代码的任务 |

**简言之**：
- **本地委托会话**：最多只更改项目文件，不会影响本地环境，实际代码运行通过云端 GitHub 完成。
- **Copilot CLI**：真正完全在本地机器上运行，可以修改文件、安装依赖、执行命令，对本地环境有实际影响。

---

## 是否需要单独安装 GitHub Copilot CLI？

安装了 Copilot CLI（编码代理）之后，**仍然建议在终端中安装 GitHub Copilot CLI**，原因如下：

- **Copilot CLI（编码代理）**：用于自动化完成编程任务，如写代码、修复 bug、重构等，通过 GitHub 界面或 API 驱动。
- **GitHub Copilot CLI（终端工具）**：提供命令行辅助功能，如 `gh copilot suggest`（命令建议）、`gh copilot explain`（命令解释），方便你在终端直接获取 AI 辅助。

两者是**互补关系**，而非替代关系：
- 如果你只需要自动化编程任务 → 使用 Copilot CLI（编码代理）即可
- 如果你还需要在终端获取 AI 命令建议 → 需要额外安装 GitHub Copilot CLI

### 安装 GitHub Copilot CLI（终端工具）

```bash
# 通过 gh 扩展安装
gh extension install github/gh-copilot

# 使用示例
gh copilot suggest "如何查看所有 Kubernetes Pod 的状态"
gh copilot explain "kubectl get pods -n kube-system"
```

---

## 本项目推荐工具组合

针对本云原生音乐平台项目，推荐以下工具组合：

1. **Copilot CLI（编码代理）**：用于自动化修改 Kubernetes 配置、Flask 代码、部署脚本等
2. **GitHub Copilot CLI（终端工具）**：在终端中快速获取 `kubectl`、`docker`、`helm` 等命令的 AI 建议
3. **本地委托会话**：适用于仅需修改项目代码而不希望影响本地环境的场景
