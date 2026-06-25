@echo off
chcp 65001 >nul
echo ========================================
echo   广州地铁活点地图 - GitHub部署脚本
echo ========================================
echo.

REM 检查git是否安装
where git >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到Git，请先安装Git
    echo 下载地址: https://git-scm.com/download/win
    echo 安装后请重启电脑，然后重新运行此脚本
    pause
    exit /b 1
)

echo [1/5] 初始化Git仓库...
git init

echo [2/5] 添加文件...
git add guangzhou-metro-topology.html
git add README.md

echo [3/5] 提交更改...
git commit -m "feat: 广州地铁活点地图 v1.0
- 活点地图主题
- 咒语登录界面
- 飞天扫把点亮功能
- 金色飞贼传说级站点
- 滚动条导航
- 站点记录功能"

echo [4/5] 添加远程仓库...
echo.
echo 请先在GitHub上创建仓库，然后输入仓库地址
echo 格式: https://github.com/你的用户名/仓库名.git
echo.
set /p repo_url=请输入仓库地址: 
git remote add origin %repo_url%

echo [5/5] 推送到GitHub...
git branch -M main
git push -u origin main

echo.
echo ========================================
echo   部署完成！
echo ========================================
echo.
echo 下一步：
echo 1. 访问你的GitHub仓库
echo 2. 进入 Settings (设置)
echo 3. 左侧菜单找到 Pages
echo 4. Source 选择 "main" 分支 和 "root" 文件夹
echo 5. 点击 Save
echo 6. 等待1-2分钟，你的网站就会上线！
echo.
echo 网站地址格式: https://你的用户名.github.io/仓库名
echo.
pause
