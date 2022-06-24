# add to the end of ~/.zshrc, and then use "source ~/.zshrc"

function hello() {
    echo hello;
}

function timestamp() {
    time=`date +%s`
    ZERO_TIME=$(((${time}+3600*8)/86400*86400-3600*8))

    #昨天0点（毫秒） 秒去掉'000'
    today=$(((${time}+3600*8)/86400*86400-3600*8))'000'
    yesterday=$(((${time}+3600*8)/86400*86400-3600*32))'000'
    day7=$(((${time}+3600*8)/86400*86400-3600*(8+24*7)))'000'
    echo "==============TIMESTAMP============="
    echo "now: \t\t $(date +%s)000"
    echo "today: \t\t $today"
    echo "yesterday: \t $yesterday"
    echo "7 days ago: \t $day7"
    echo "===================================="
}
