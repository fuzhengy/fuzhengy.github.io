
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd ./docs/.vitepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git config --global user.email "2540229178@qq.com"
git config --global user.name "FunnyDerivatives"
git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master
# git push -f git@github.com:FunnyDerivatives/fuzy.github.io.git  master:gh-pages
 git push -f git@github.com:fuzhengy/fuzhengy.github.io.git  master:gh-pages

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

# 把上面的 <USERNAME> 换成你自己的 Github 用户名，<REPO> 换成仓库名，比如我这里就是：
#git push -f git@github.com:wtyqer/blog.git master:gh-pages

cd -
