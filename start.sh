# #!/bin/bash

# # 定义颜色
# RED='\e[31m'
# GREEN='\e[32m'
# YELLOW='\e[33m'
# BLUE='\e[34m'
# RESET='\e[0m' # 用于重置颜色

# # VuePress 可执行文件的路径
# VUEPRESS_BIN="/root/node-npm-vue/node-v16.15.0-linux-x64/bin/vuepress"
# # VuePress 文档目录
# DOCS_DIR="docs"
# # 日志文件路径
# LOG_FILE="/var/log/vuepress.log"
# # PID 文件路径，用于记录 VuePress 的进程 ID
# PID_FILE="/var/run/vuepress.pid"

# # 定义加载条函数
# show_progress() {
#     echo -ne "${YELLOW}Loading"
#     for ((i=0; i<10; i++)); do
#         echo -ne "."
#         sleep 0.5
#     done
#     echo -e "${RESET}"
# }

# case "$1" in
#     start)
#         echo -e "${YELLOW}Starting VuePress server at $(date)${RESET}" | tee -a $LOG_FILE
#         # 启动 VuePress 并在后台运行，记录其进程 ID
#         $VUEPRESS_BIN dev $DOCS_DIR >> $LOG_FILE 2>&1 &
#         VUEPRESS_PID=$!
        
#         # 显示加载条
#         show_progress
        
#         # 检查进程是否在运行并记录 PID
#         if ps -p $VUEPRESS_PID > /dev/null; then
#             echo $VUEPRESS_PID > $PID_FILE
#             echo -e "${GREEN}VuePress server started successfully at $(date)${RESET}" | tee -a $LOG_FILE
#             echo -e "${GREEN}success${RESET}"
#         else
#             echo -e "${RED}Failed to start VuePress server at $(date)${RESET}" | tee -a $LOG_FILE
#             echo -e "${RED}failure${RESET}"
#         fi
#         ;;
        
#     stop)
#         # 检查是否存在 PID 文件并尝试终止进程
#         if [ -f $PID_FILE ]; then
#             VUEPRESS_PID=$(cat $PID_FILE)
#             echo -e "${YELLOW}Stopping VuePress server with PID $VUEPRESS_PID at $(date)${RESET}" | tee -a $LOG_FILE
#             kill $VUEPRESS_PID
            
#             # 显示加载条
#             show_progress
            
#             # 确认进程已被终止
#             if ! ps -p $VUEPRESS_PID > /dev/null; then
#                 echo -e "${GREEN}VuePress server stopped successfully at $(date)${RESET}" | tee -a $LOG_FILE
#                 rm -f $PID_FILE
#                 echo -e "${GREEN}success${RESET}"
#             else
#                 echo -e "${RED}Failed to stop VuePress server at $(date)${RESET}" | tee -a $LOG_FILE
#                 echo -e "${RED}failure${RESET}"
#             fi
#         else
#             echo -e "${RED}VuePress server is not running or PID file is missing${RESET}" | tee -a $LOG_FILE
#             echo -e "${RED}failure${RESET}"
#         fi
#         ;;
        
#     *)
#         echo -e "${BLUE}Usage: $0 {start|stop}${RESET}"
#         exit 1
#         ;;
# esac
#!/bin/bash

# 定义颜色
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
RESET='\e[0m' # 用于重置颜色

# VuePress 可执行文件的路径
VUEPRESS_BIN="/root/node-npm-vue/node-v16.15.0-linux-x64/bin/vuepress"
# VuePress 文档目录
DOCS_DIR="docs"
# 日志文件路径
LOG_FILE="/var/log/vuepress.log"
# PID 文件路径，用于记录 VuePress 的进程 ID
PID_FILE="/var/run/vuepress.pid"

# 定义异步加载条函数
show_progress() {
    echo -ne "${YELLOW}Loading"
    while true; do
        echo -ne "."
        sleep 0.5
    done
}

# 开始加载条的函数
start_progress_bar() {
    show_progress &
    PROGRESS_PID=$!  # 保存加载条的进程ID，用于稍后停止它
}

# 停止加载条的函数
stop_progress_bar() {
    kill $PROGRESS_PID 2>/dev/null
    wait $PROGRESS_PID 2>/dev/null
    echo -e "${RESET}"  # 清除颜色
}

case "$1" in
    start)
        echo -e "${YELLOW}Starting VuePress server at $(date)${RESET}" | tee -a $LOG_FILE
        # 启动 VuePress 并在后台运行，记录其进程 ID
        $VUEPRESS_BIN dev $DOCS_DIR >> $LOG_FILE 2>&1 &
        VUEPRESS_PID=$!
        
        # 启动异步加载条
        start_progress_bar
        
        # 等待几秒钟以确保服务完成初始化
        sleep 5
        
        # 检查进程是否在运行并记录 PID
        if ps -p $VUEPRESS_PID > /dev/null; then
            echo $VUEPRESS_PID > $PID_FILE
            stop_progress_bar  # 停止加载条
            echo -e "${GREEN}VuePress server started successfully at $(date)${RESET}" | tee -a $LOG_FILE
            echo -e "${GREEN}success${RESET}"
        else
            stop_progress_bar  # 停止加载条
            echo -e "${RED}Failed to start VuePress server at $(date)${RESET}" | tee -a $LOG_FILE
            echo -e "${RED}failure${RESET}"
        fi
        ;;
        
    stop)
        # 检查是否存在 PID 文件并尝试终止进程
        if [ -f $PID_FILE ]; then
            VUEPRESS_PID=$(cat $PID_FILE)
            echo -e "${YELLOW}Stopping VuePress server with PID $VUEPRESS_PID at $(date)${RESET}" | tee -a $LOG_FILE
            kill $VUEPRESS_PID
            
            # 启动异步加载条
            start_progress_bar
            
            # 确认进程已被终止
            sleep 2
            if ! ps -p $VUEPRESS_PID > /dev/null; then
                rm -f $PID_FILE
                stop_progress_bar  # 停止加载条
                echo -e "${GREEN}VuePress server stopped successfully at $(date)${RESET}" | tee -a $LOG_FILE
                echo -e "${GREEN}success${RESET}"
            else
                stop_progress_bar  # 停止加载条
                echo -e "${RED}Failed to stop VuePress server at $(date)${RESET}" | tee -a $LOG_FILE
                echo -e "${RED}failure${RESET}"
            fi
        else
            echo -e "${RED}VuePress server is not running or PID file is missing${RESET}" | tee -a $LOG_FILE
            echo -e "${RED}failure${RESET}"
        fi
        if [ -f $LOG_FILE ]; then
            rm -rf $LOG_FILE
        fi 
        ;;
        
    *)
        echo -e "${BLUE}Usage: $0 {start|stop}${RESET}"
        exit 1
        ;;
    
esac
