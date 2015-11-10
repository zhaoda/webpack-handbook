# 故障处理

Webpack 的配置比较复杂，很容出现错误，下面是一些通常的故障处理手段。

一般情况下，webpack 如果出问题，会打印一些简单的错误信息，比如模块没有找到。我们还可以通过参数 `--display-error-details` 来打印错误详情。

```bash
$ webpack --display-error-details

Hash: a40fbc6d852c51fceadb
Version: webpack 1.12.2
Time: 586ms
    Asset     Size  Chunks             Chunk Names
bundle.js  12.1 kB       0  [emitted]  main
   [0] ./entry.js 153 bytes {0} [built] [1 error]
   [5] ./module.js 43 bytes {0} [built]
    + 4 hidden modules

ERROR in ./entry.js
Module not found: Error: Cannot resolve 'file' or 'directory' ./badpathmodule in /Users/zhaoda/data/projects/webpack-handbook/examples
resolve file
  /Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule doesn't exist
  /Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule.webpack.js doesn't exist
  /Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule.js doesn't exist
  /Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule.web.js doesn't exist
  /Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule.json doesn't exist
resolve directory
  /Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule doesn't exist (directory default file)
  /Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule/package.json doesn't exist (directory description file)
[/Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule]
[/Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule.webpack.js]
[/Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule.js]
[/Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule.web.js]
[/Users/zhaoda/data/projects/webpack-handbook/examples/badpathmodule.json]
 @ ./entry.js 3:0-26
```

Webpack 的配置提供了 `resolve` 和 `resolveLoader` 参数来设置模块解析的处理细节，`resolve` 用来配置应用层的模块（要被打包的模块）解析，`resolveLoader` 用来配置 `loader` 模块的解析。

当引入通过 npm 安装的 node.js 模块时，可能出现找不到依赖的错误。Node.js 模块的依赖解析算法很简单，是通过查看模块的每一层父目录中的 `node_modules` 文件夹来查询依赖的。当出现 Node.js 模块依赖查找失败的时候，可以尝试设置 `resolve.fallback` 和 `resolveLoader.fallback` 来解决问题。

```js
module.exports = {
  resolve: { fallback: path.join(__dirname, "node_modules") },
  resolveLoader: { fallback: path.join(__dirname, "node_modules") }
};
```
Webpack 中涉及路径配置最好使用绝对路径，建议通过 `path.resolve(__dirname, "app/folder")` 或 `path.join(__dirname, "app", "folder")` 的方式来配置，以兼容 Windows 环境。






