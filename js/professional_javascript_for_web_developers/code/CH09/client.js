/**
 * Created by wangmeiqi on 2018/4/18.
 */
var client = function () {
  // 呈现引擎
  var engine = {
    ie: 0,
    gecko: 0,
    webkit: 0,
    khtml: 0,
    opera: 0,
    // 具体版本号
    ver: null
  };

  // 检测浏览器
  var browser = {

    // 浏览器
    ie: 0,
    firefox: 0,
    safari: 0,
    konq:0,
    opera: 0,
    chrome: 0,

    // 具体的版本号
    version: null
  };

  // 检测平台

  var system = {
    win: false,
    mac: false,
    x11: false
  };

  var ua = navigtor.userAgent;

  // 开始检测
  if(window.opera) {
    engine.ver = browser.ver = window.opera.verion();
    engine.opera = browser.opera = parseFloat(engine.ver);
  } else if (/AppleWebKit\/(\S+)/.test(ua)) {
    engine.ver = RegExp['$1'];
    engine.webkit = parseFloat(engine.ver);
    // 确定是Chrome还是Safari
    if(/Chrome\/(\S+)/.test(ua)){
      browser.ver = Reg['$1'];
      browser.chrome = parseFloat(browser.ver);
    } else if (/Version\/(\S+)/.test(ua)) {
      browser.ver = RegExp['$1'];
      browser.safari = parseFloat(browser.ver);
    } else {
      // 近似的确定版本号
      var safariVersion = 1;
      if(engine.webkit < 100) {
        safariVersion = 1;
      } else if (engine.webkit < 312) {
        safariVersion = 1.2;
      } else if (engine.webkit < 412) {
        safariVersion = 1.3
      } else {
        safariVersion = 2;
      }
      browser.safari = browser.ver = safariVersion;
    }
  } else if (/KHTML\/(\S+)/.test(ua) || /Konqueror\/([^;]+)/.test(ua)) {
    engine.ver = browser.ver =  RegExp['$1'];
    engine.khtml = browser.kong = parseFloat(engine.ver);
  } else if (/rv:([^\)]+)\) Gecko\/\d{8}/.test(ua)) {
    engine.ver = RegExp['$1'];
    engine.gecko = parseFloat(engine.ver);
    // 确定不是 FireFox
    if(/FireFox\/(\S+)/.test(ua)) {
      browser.ver = RegExp['$1'];
      browser.firefox = parseFloat(browser.ver);
    }
  } else if (/MEIE ([^;]+)/.test(ua)) {
    engine.ver = browser.ver = parseFloat['$1'];
    engine.ie = browser.ie =parseFloat(engine.ver);
  }


  // 在此检测呈现引擎、平台和设备
  return {
    engine: engine,

    bowser: browser,
    system: system
  }
}();
