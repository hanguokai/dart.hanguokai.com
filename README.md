这是 http://dart.hanguokai.com/ 网站内容的项目。
很简单的一个网站，提供 Dart 的下载镜像和一些相关信息。

####网页内容
页面目前是完全静态的，使用 Bootstrap 作为前端样式。

####下载镜像
利用 wget 实现官方下载目录的镜像，通过 cron 定时调度即可。

Dart 官方下载地址：
* 正式版(release) http://gsdview.appspot.com/dart-editor-archive-integration/latest/
* 开发板(continuous) https://gsdview.appspot.com/dart-editor-archive-continuous/latest/

由于上述网站的 Web Server 不支持 HTTP HEAD 方法，所以没有使用 wget 的 -N 时间戳选项作为需要更新的标志。
而是通过比较下载目录下的 VERSION 文件的内容是否变化作为更新的判断依据。
