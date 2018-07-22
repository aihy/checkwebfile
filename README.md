# checkwebfile

* 这个脚本用于检查网页是否更新
* 它不断下载页面，校验MD5值，一旦更新就发邮件通知你

* 比如你想实时知道查哥是不是更新了他的博客

* 再比如你在等待某个学校官网的通知信息

* Just use it for fun!

## Usage

* 打开终端
* 克隆到本地```git clone https://github.com/aihy/checkwebfile.git```
* 进入文件夹```cd checkwebfile```
* 运行```bash checkwebfile.sh url message email sleeptime```
* 参数说明：url是网页地址 message是邮件主题 email是接收者邮件地址 sleeptime是每隔多久检查一次 单位是秒
* 比如：```bash checkwebfile.sh zhayujie.com zha_ge_geng_xin_le p_xi@foxmail.com 30```每隔30秒检查一次查哥博客是否更新，如果更新了就发一封主题为zha_ge_geng_xin_le的邮件到p_xi@foxmail.com

## Attention

* 发送邮件使用mail命令，你需要配置好mail命令，达到可以使用```echo "xixi"|mail -s "sub" xxx@mail.com```发送邮件的程度
* 具体怎么配置，可以参考我的文章[linux下配置mail在命令行发送邮件][1]


[1]: https://wzhy.ink/index.php/archives/29/