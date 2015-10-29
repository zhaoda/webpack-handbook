# Webpack中文指南

[Webpack](https://github.com/webpack/webpack)是当下最热门的前端资源模块化管理和打包工具，本书大部分内容翻译自[Webpack官方文档](http://webpack.github.io/docs/)。

## 贡献内容

如果你想参与这本书的共同创作，修改或添加内容，可以先[Fork](https://github.com/zhaoda/webpack-handbook)这本书的仓库，然后将修改的内容提交Pull requests；或者创建[Issues](https://github.com/zhaoda/webpack-handbook/issues)。

注意，本书内容在`/content`目录中，[gh-pages分支](https://github.com/zhaoda/webpack-handbook/tree/gh-pages)和[Wiki版](https://github.com/zhaoda/webpack-handbook/wiki)是通过脚本自动生成的。

## 生成电子书

这本书使用[gitbook](https://github.com/GitbookIO/gitbook)撰写并生成[网站](http://zhaoda.net/webpack-handbook/)，请查看`package.json`中的`scripts`配置和`/scripts`目录中的脚本来了解这本书的构建和发布过程。

```bash
// 初始化nodejs依赖
$ npm install

// 安装gitbook插件
$ npm install gitbook-cli -g
$ gitbook install ./content

// 启动gitbook服务开始撰写工作
$ npm run serve-gitbook

// 生成gitbook
$ npm run generate-gitbook

// 生成wiki
$ npm run generate-wiki

// 发布到gh-pages分支
$ npm run deploy-gitbook

// 发布到wiki
$ npm run deploy-wiki

// 生成并发布，是上面4条命令的快捷方式，通常编辑内容后只需要进行这个操作
$ npm run generate-and-deploy

```