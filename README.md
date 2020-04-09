## VScode配合Xcode开发flutter （mac电脑）
### [学习视频](https://www.bilibili.com/video/av52490605?p=17)
### [学习视频](https://www.jspang.com/detailed?id=41#toc227)
### 环境搭建步骤
- 1、[下载Android Studio](http://www.android-studio.org)
- 2、[下载Flutter SDK包](https://flutter.io/setup-macos/)(需要翻墙)
- 3、打开Android Studio，会默认帮你下载Android SDK(需要翻墙)，再点击Plugins插件下载flutter和dart插件
- 4、配置环境变量及flutter国内代理(不然每次启动项目都需要翻墙)
```bash
export PATH=/Users/xucongmac/flutter/flutter/bin:$PATH
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```
- 5、在终端运行flutter -h查看flutter环境变量是否设置成功
- 5、安装Android协议
```bash
flutter doctor --android-licenses
```
- 7、在终端运行flutter doctor，第一次使用mac开发的话，一般要执行下面命令
```bash
brew install --HEAD libimobiledevice
brew install ideviceinstaller
brew install ios-deploy
brew install cocoapods
pod setup
```
- 8、打开Android Studio创建Flutter项目
- 9、通过VScode配合Xcode模拟器启动项目
```bash
- VScode下载Dart和Flutter插件
- 把项目拖入VScode中，再点击右下角的No Device弹出Xcode模拟器
- 在项目根目录终端运行flutter run，启动项目
```
tip：启动项目了几个热键含义
```bash
r 键：热加载。
R 键：重新编译。
p 键：显示网格。
o 键：切换android和ios的预览模式。
q 键：退出调试预览模式。
```
