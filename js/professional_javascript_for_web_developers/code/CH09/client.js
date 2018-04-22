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
    x11: false,

    // 移动设备
    iphone: false,
    ipod: false,
    ipad: false,
    ios: false,
    android: false,
    nokiaN: false,
    winMobile: false,

    // 游戏系统
    wii: false,
    ps: false

  };

  var ua = navigator.userAgent;

  // 开始检测
  if(window.opera) {
    engine.ver = browser.ver = window.opera.version();
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

  // 识别平台
  var p = navigator.platform;
  system.win = p.indexOf('Win') === 0;
  system.mac = p.indexOf('Mac') === 0;
  system.x11 = (p.indexOf('X11') === 0) || (p.indexOf('Linux') === 0);

  // 识别windows
  if(system.win){
    if(/Win(?:dows)?([^do]{2})(\d+\.\d+)/.test(ua)) {
      if(RegExp['$1'] === 'NT') {
        switch (RegExp['$2']) {
          case '5.0' :
            system.win = '2000';
            break;
          case '5.1':
            system.win = 'XP';
            break;
          case '6.0':
            system.win = 'Vista';
            break;
          case '6.1':
            system.win = 'NT';
            break;
          default:
            system.win = 'NT';
            break;
        }
      } else if (RegExp['$1'] === '9x'){
        system.win = 'ME';
      } else {
        system.win = RegExp['$1'];
      }
    }
  }

  // 移动检测
  system.iphone = ua.indexOf('iPhone') > -1;
  system.ipod = ua.indexOf('iPod') > -1;
  system.ipad = ua.indexOf('iPad') > -1;

  if(system.mac && ua.indexOf('Mobile') > -1) {
    if(/CPU (?:iPhone)?OS (\d+_\d+)/.test(ua)) {
      system.ios = parseFloat(RegExp.$1.replace('-','.'));
    } else {
      system.ios = 2; // 不能识别
    }
  }
  // 检测Andriod 版本
  if(/Andriod (\d+\.\d+)/.test(ua)) {
    system.android = parseFloat(RegExp.$1);
  }
  system.nokiaN = ua.indexOf('NokiaN') > -1;

  // Window mobile
  if(system.win === 'CE') {
    system.winMobile = system.win;
  } else if (system.win === 'Ph') {
    if(/Windows Phone Os (\d+\.\d+)/.test(ua)) {
      system.win = 'Phone';
      system.winMobile = parseFloat(RegExp.$1);
    }
  }

  // 游戏系统
  system.wii = ua.indexOf('Wii') > -1;
  system.ps = /playstation/i.test(ua);

  // 在此检测呈现引擎、平台和设备
  return {
    engine: engine,

    browser: browser,
    system: system
  }
}();
