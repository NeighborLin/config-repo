windows下使用git bash做主力工具:

1. 部署.vim目录(包含vim插件)和.vimrc到/c/Users/[用户名]/下
2. 根据png修改bash配色

3. vscode安装vim插件后，设置中搜索vimrc，使用$HOME/.vimrc
4. start命令
    start xxx 使用默认打开方式打开xxx
    start .(等效于explorer x) 在文件夹中打开当前目录

5. 配置vscode
    将vscode的目录加入PATH中，使用code . 在vscode中打开当前项目
6. 使用tree显示目录结构
    tree [-option] [dir]
        -N 显示中文,不加有的会乱码
        -L[n] 展示的层级
        -d 只显示文件夹
        -FC 颜色区分文件夹、普通文件、可执行文件等
    下载地址: https://sourceforge.net/projects/gnuwin32/files/tree/1.5.2.2/ ,下载完后放在/usr/bin下
    解决tree打印中文乱码问题：
        (1)创建/usr/bin/tree.sh, 内容如下
            /usr/bin/tree $@ -FCN | iconv -f GBK -t UTF-8
        (2)~/.bash_profile增加: alias tree='tree.sh'

7. gitbash命令工具下载
    https://sourceforge.net/projects/gnuwin32/files/
