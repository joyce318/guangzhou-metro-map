# GitHub Pages 部署指南

## 第一步：安装 Git

1. 访问 https://git-scm.com/download/win
2. 下载 Windows 版本
3. 运行安装程序，全程点 "Next" 即可
4. 安装完成后**重启电脑**

## 第二步：创建 GitHub 仓库

1. 访问 https://github.com 并登录（如果没有账号先注册）
2. 点击右上角 "+" → "New repository"
3. 填写：
   - Repository name: `guangzhou-metro-map`
   - Description: `广州地铁活点地图`
   - 选择 Public
   - 不要勾选 Initialize this repository with a README
4. 点击 "Create repository"
5. 复制仓库地址，格式如：
   `https://github.com/你的用户名/guangzhou-metro-map.git`

## 第三步：运行部署脚本

1. 打开文件夹 `C:\Users\admin\Desktop\tare`
2. 双击运行 `deploy-to-github.bat`
3. 按照提示操作：
   - 输入刚才复制的仓库地址
   - 如果提示登录GitHub，按提示操作

## 第四步：启用 GitHub Pages

1. 访问你的GitHub仓库
2. 点击 "Settings"（设置）
3. 左侧菜单向下滚动，点击 "Pages"
4. 设置：
   - Source: Deploy from a branch
   - Branch: main / (root)
   - 点击 "Save"
5. 等待 1-2 分钟

## 第五步：获取链接

1. 回到仓库的 Settings → Pages 页面
2. 你会看到："Your site is published at https://你的用户名.github.io/guangzhou-metro-map"
3. 点击链接测试你的网站！

## 常见问题

### Q: 部署脚本提示 "未检测到Git"
A: 请先安装Git并重启电脑

### Q: 推送代码时要求登录
A: GitHub需要认证，按提示在浏览器中授权即可

### Q: 网站显示404
A: 等待2分钟后刷新，或者检查Settings → Pages配置是否正确

### Q: 想更新网站内容
A: 修改代码后，再次运行 deploy-to-github.bat 即可

## 分享给你的朋友

部署成功后，分享这个链接给朋友：
`https://你的用户名.github.io/guangzhou-metro-map`

他们打开后输入咒语 **「我庄严宣誓我不干好事」** 就可以使用啦！

## 注意事项

- 别人打开网站时，所有数据都在他们自己的浏览器中（localStorage）
- 如果你想和朋友分享你的记录，需要导出/导入数据（目前不支持，可以后续添加）

---

有问题随时问我！
