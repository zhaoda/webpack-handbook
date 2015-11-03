# Webpack 中文指南

[Webpack](https://github.com/webpack/webpack) 是当下最热门的前端资源模块化管理和打包工具，本书的部分内容翻译自 [Webpack 官方文档](http://webpack.github.io/docs/)。

## 贡献内容

如果你想参与这本书的共同创作，修改或添加内容，可以先 [Fork](https://github.com/zhaoda/webpack-handbook) 这本书的仓库，然后将修改的内容提交 [Pull requests](https://github.com/zhaoda/webpack-handbook/pulls) ；或者创建 [Issues](https://github.com/zhaoda/webpack-handbook/issues)。

Fork 后的仓库如何同步本仓库？

```bash
// 添加 upstream 源，只需执行一次
$ git remote add upstream git@github.com:zhaoda/webpack-handbook.git

// 拉取远程代码
$ git pull upstream master

// 提交修改
$ git add .
$ git commit

// 更新 fork 仓库
$ git push origin master
```

更多参考： [Syncing a fork](https://help.github.com/articles/syncing-a-fork/)

注意，本书内容在 `/content` 目录中， [gh-pages](https://github.com/zhaoda/webpack-handbook/tree/gh-pages) 分支和 [Wiki](https://github.com/zhaoda/webpack-handbook/wiki) 版是通过脚本自动生成的。

## 生成电子书

这本书使用 [Gitbook](https://github.com/GitbookIO/gitbook) 撰写并生成[网站](http://zhaoda.net/webpack-handbook/)，请查看 `package.json` 中的 `scripts` 配置和 `/scripts` 目录中的脚本来了解这本书的构建和发布过程。

```bash
// 初始化 nodejs 依赖
$ npm install

// 安装 gitbook 插件
$ npm install gitbook-cli -g
$ gitbook install ./content

// 启动 gitbook 服务开始撰写工作
$ npm run serve-gitbook

// 生成 gitbook
$ npm run generate-gitbook

// 生成 wiki
$ npm run generate-wiki

// 发布到 gh-pages 分支
$ npm run deploy-gitbook

// 发布到 wiki
$ npm run deploy-wiki

// 生成并发布，是上面4条命令的快捷方式，通常编辑内容后只需要进行这个操作
$ npm run generate-and-deploy

```

## 作者

[@zhaoda](https://github.com/zhaoda)

## 更新日志

https://github.com/zhaoda/webpack-handbook/commits/master

## License

MIT

