#!/bin/bash

# DevFest Workshop 网站推送脚本
# 请在终端中执行以下命令来推送代码到 GitHub

echo "🚀 开始推送 DevFest Workshop 网站代码..."

# 进入项目目录
cd /Users/cyx/Desktop/devtools-mcp-website

# 检查 Git 状态
echo "📋 检查 Git 状态..."
git status

# 确保所有文件都已添加
echo "📦 添加所有文件..."
git add .

# 提交更改（如果有的话）
echo "💾 提交更改..."
git commit -m "🎉 优化并完善 DevFest Workshop 网站

- ✨ 添加完整的 HTML 页面 (index.html, gdg.html, devtools.html, profile.html)
- 🎨 优化 CSS 样式文件
- 🚀 添加 GitHub Actions 部署工作流
- 📝 更新 README 文档
- 🛠️ 完善项目结构和配置"

# 强制推送到远程仓库（覆盖远程的不完整版本）
echo "🌐 推送到 GitHub..."
git push --force-with-lease origin main

echo "✅ 推送完成！"
echo "🌟 您的网站将在以下地址可用："
echo "   https://iccyyxx.github.io/devtools-mcp-website/"
echo ""
echo "🔧 如果遇到认证问题，请："
echo "   1. 确保已登录 GitHub"
echo "   2. 或使用 GitHub CLI: gh auth login"
echo "   3. 或配置个人访问令牌"
