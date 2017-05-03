# Webpack 中文指南

[![Join the chat at https://gitter.im/zhaoda/webpack-handbook](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/zhaoda/webpack-handbook?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[Webpack](https://github.com/webpack/webpack) 是当下最热门的前端资源模块化管理和打包工具。它可以将许多松散的模块按照依赖和规则打包成符合生产环境部署的前端资源。还可以将按需加载的模块进行代码分隔，等到实际需要的时候再异步加载。通过 `loader` 的转换，任何形式的资源都可以视作模块，比如 CommonJs 模块、 AMD 模块、 ES6 模块、CSS、图片、 JSON、Coffeescript、 LESS 等。

[主站](http://zhaoda.net/webpack-handbook) · [下载电子版](https://www.gitbook.com/book/zhaoda/webpack/details)

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

注意，本书内容在 `/content` 目录中， `/docs` 和 [Wiki](https://github.com/zhaoda/webpack-handbook/wiki) 版是通过脚本自动生成的。

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

// 发布到 wiki
$ npm run deploy-wiki

// 生成并发布，是上面3条命令的快捷方式，通常编辑内容后只需要进行这个操作
$ npm run generate-and-deploy

```

## 更新日志

[https://github.com/zhaoda/webpack-handbook/commits/master](https://github.com/zhaoda/webpack-handbook/commits/master)

## 版权许可

<p>
  <span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Text" property="dct:title" rel="dct:type">Webpack 中文指南</span> 由 <a xmlns:cc="http://creativecommons.org/ns#" href="http://zhaoda.net/webpack-handbook" property="cc:attributionName" rel="cc:attributionURL">赵达</a> 创作，采用 <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">知识共享 署名-非商业性使用 4.0 国际 许可协议</a>进行许可。
</p>