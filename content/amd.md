# AMD 规范

AMD（异步模块定义）是为浏览器环境设计的，因为 CommonJS 模块系统是同步加载的，当前浏览器环境还没有准备好同步加载模块的条件。

AMD 定义了一套 JavaScript 模块依赖异步加载标准，来解决同步加载的问题。

模块通过 `define` 函数定义在闭包中，格式如下：

```js
define(id?: String, dependencies?: String[], factory: Function|Object);
```

`id` 是模块的名字，它是可选的参数。

`dependencies` 指定了所要依赖的模块列表，它是一个数组，也是可选的参数，每个依赖的模块的输出将作为参数一次传入 `factory` 中。如果没有指定 `dependencies`，那么它的默认值是 `["require", "exports", "module"]`。

```js
define(function(require, exports, module) {}）
```

`factory` 是最后一个参数，它包裹了模块的具体实现，它是一个函数或者对象。如果是函数，那么它的返回值就是模块的输出接口或值。

一些用例：

定义一个名为 `myModule` 的模块，它依赖 `jQuery` 模块：

```js
define('myModule', ['jquery'], function($) {
    // $ 是 jquery 模块的输出
    $('body').text('hello world');
});
// 使用
require(['myModule'], function(myModule) {});
```

注意：在 webpack 中，模块名只有局部作用域，在 Require.js 中模块名是全局作用域，可以在全局引用。

定义一个没有 `id` 值的匿名模块，通常作为应用的启动函数：

```js
define(['jquery'], function($) {
    $('body').text('hello world');
});
```

依赖多个模块的定义：

```js
define(['jquery', './math.js'], function($, math) {
    // $ 和 math 一次传入 factory
    $('body').text('hello world');
});
```

模块输出：

```js
define(['jquery'], function($) {

    var HelloWorldize = function(selector){
        $(selector).text('hello world');
    };

    // HelloWorldize 是该模块输出的对外接口
    return HelloWorldize;
});
```

在模块定义内部引用依赖：

```js
define(function(require) {
    var $ = require('jquery');
    $('body').text('hello world');
});
```
