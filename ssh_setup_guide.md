# 🔐 SSH 密钥配置指南

## ✅ 已完成的步骤

1. ✨ **SSH 密钥已生成**
   - 私钥：`~/.ssh/id_ed25519`
   - 公钥：`~/.ssh/id_ed25519.pub`

2. 🔧 **SSH 代理已配置**
   - SSH 代理已启动
   - 私钥已添加到代理

3. ⚙️ **SSH 配置文件已创建**
   - 文件位置：`~/.ssh/config`
   - 已配置 GitHub 连接参数

## 🚀 下一步：将公钥添加到 GitHub

### 您的 SSH 公钥：
```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHTFkBdnWW3dTzkx9Pq56YViIz9YOWFMDFt0vKEi2zT4 80975930@qq.com
```

### 📋 添加步骤：

1. **打开 GitHub SSH 设置页面**：
   - 访问：https://github.com/settings/ssh

2. **点击 "New SSH key" 按钮**

3. **填写信息**：
   - **Title**: `DevFest Workshop - MacBook` (或任何您喜欢的名称)
   - **Key**: 复制上面的整个公钥内容

4. **点击 "Add SSH key"**

5. **验证配置**：
   ```bash
   ssh -T git@github.com
   ```
   如果看到 "Hi iccyyxx! You've successfully authenticated..." 说明配置成功！

## 🔄 更新 Git 远程地址

配置完成后，将仓库的远程地址改为 SSH 格式：

```bash
cd /Users/cyx/Desktop/devtools-mcp-website
git remote set-url origin git@github.com:iccyyxx/devtools-mcp-website.git
```

## 🎉 推送代码

SSH 配置完成后，就可以直接推送了：

```bash
git push -u origin main
```

## 🔍 故障排除

如果遇到问题，可以使用以下命令调试：

```bash
# 测试 SSH 连接
ssh -T git@github.com

# 详细调试信息
ssh -vT git@github.com

# 检查 SSH 代理
ssh-add -l
```

---

🎨 配置完成后，您就可以安全地推送代码到 GitHub 了！
