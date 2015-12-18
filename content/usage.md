# 使用

首先创建一个静态页面 index.html 和一个 JS 入口文件 entry.js：

```html
<!-- index.html -->
<html>
<head>
  <meta charset="utf-8">
</head>
<body>
  <script src="bundle.js"></script>
</body>
</html>
```

```js
// entry.js
document.write('It works.')
```

然后编译 entry.js 并打包到 bundle.js：

```bash
$ webpack entry.js bundle.js
```

打包过程会显示日志：

```
Hash: e964f90ec65eb2c29bb9
Version: webpack 1.12.2
Time: 54ms
    Asset     Size  Chunks             Chunk Names
bundle.js  1.42 kB       0  [emitted]  main
   [0] ./entry.js 27 bytes {0} [built]
```

用浏览器打开 `index.html` 将会看到 `It works.` 。

接下来添加一个模块 `module.js` 并修改入口 `entry.js`：

```js
// module.js
module.exports = 'It works from module.js.'
```

```js
// entry.js
document.write('It works.')
document.write(require('./module.js')) // 添加模块
```

重新打包 `webpack entry.js bundle.js` 后刷新页面看到变化 `It works.It works from module.js.`

```
Hash: 279c7601d5d08396e751
Version: webpack 1.12.2
Time: 63ms
    Asset     Size  Chunks             Chunk Names
bundle.js  1.57 kB       0  [emitted]  main
   [0] ./entry.js 66 bytes {0} [built]
   [1] ./module.js 43 bytes {0} [built]
```

Webpack 会分析入口文件，解析包含依赖关系的各个文件。这些文件（模块）都打包到 bundle.js 。Webpack 会给每个模块分配一个唯一的 id 并通过这个 id 索引和访问模块。在页面启动时，会先执行 entry.js 中的代码，其它模块会在运行 `require` 的时候再执行。
