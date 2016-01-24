# CommonJS 规范

CommonJS 是以在浏览器环境之外构建 JavaScript 生态系统为目标而产生的项目，比如在服务器和桌面环境中。

这个项目最开始是由 Mozilla 的工程师 Kevin Dangoor 在2009年1月创建的，当时的名字是 ServerJS。

> 我在这里描述的并不是一个技术问题，而是一件重大的事情，让大家走到一起来做决定，迈出第一步，来建立一个更大更酷的东西。 —— Kevin Dangoor's [What Server Side JavaScript needs](http://www.blueskyonmars.com/2009/01/29/what-server-side-javascript-needs/)

2009年8月，这个项目改名为 CommonJS，以显示其 API 的更广泛实用性。CommonJS 是一套规范，它的创建和核准是开放的。这个规范已经有很多版本和具体实现。CommonJS 并不是属于 ECMAScript TC39 小组的工作，但 TC39 中的一些成员参与 CommonJS 的制定。2013年5月，Node.js 的包管理器 NPM 的作者 Isaac Z. Schlueter 说 [CommonJS 已经过时，Node.js 的内核开发者已经废弃了该规范](https://github.com/nodejs/node-v0.x-archive/issues/5132#issuecomment-15432598)。

CommonJS 规范是为了解决 JavaScript 的作用域问题而定义的模块形式，可以使每个模块它自身的命名空间中执行。该规范的主要内容是，模块必须通过 `module.exports` 导出对外的变量或接口，通过 `require()` 来导入其他模块的输出到当前模块作用域中。

一个直观的例子：

```js
// moduleA.js
module.exports = function( value ){
    return value * 2;
}
```

```js
// moduleB.js
var multiplyBy2 = require('./moduleA');
var result = multiplyBy2(4);
```

CommonJS 是同步加载模块，但其实也有浏览器端的实现，其原理是现将所有模块都定义好并通过 `id` 索引，这样就可以方便的在浏览器环境中解析了，可以参考 [require1k](https://github.com/Stuk/require1k) 和 [tiny-browser-require](https://github.com/ruanyf/tiny-browser-require) 的源码来理解其解析（resolve）的过程。

更多关于 CommonJS 规范的内容请查看 [http://wiki.commonjs.org/wiki/CommonJS](http://wiki.commonjs.org/wiki/CommonJS)。



