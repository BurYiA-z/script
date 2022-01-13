# Script

该库用于存储自己平时常用的各种自动化脚本

- new-pwn-dockerenv.sh
    > 用于docker内的ubuntu容器自动配置pwn做题环境，有代理的建议可以加上代理运行，会下载github上的内容，有代理会很快
    - 适用环境 
        - docker内的ubuntu系统
    - 配置项目
        - python2
        - pwntools
        - gdb插件
    - 使用(可无参数可单参数，参数一为代理连接)
        - ./new-pwn-dockerenv.sh
        - ./new-pwn-dockerenv.sh http://xxx.xxx.xxx.xxx:xxxx
