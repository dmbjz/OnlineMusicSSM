// 全局变量-分页-页面大小-默认5
var pageSize = 5;
// 全局变量-分页-当前页面歌曲数量-从1计数
var mindex = 1;

// 提交搜索 type:query=查询 load=加载更多
function submitQuery(type) {
    // 区分 加载更多 或 查询 如查询则修改页码为1
    var qcode = $("#pageCode").val();
    var pageCode = type == 'query' ? 1 : (parseInt(qcode)+1);
    // debugger;
    // 获取搜索关键字
    var key = $('#key').val();
    // 获取musicType
    var musicType  = $($("#topType a.current")[0]).attr("mid");
    // 获取musicSort
    var musicSort  = $($("#topSort a.current")[0]).attr("stype");

    // 拼接请求url
    var submitUrl = '/portal/search.do?key='+key+'&type='+musicType+'&sortBy='+musicSort+'&pageCode='+pageCode+'&pageSize='+pageSize;
    // 请求查询
    window.location.href=submitUrl;
}

// 加载更多
function loadMore() {
    // 分页页码+1
    pageCode++;
    submitQuery('load');
}

// 切换歌曲流派
function changeType(type) {
    // 修改样式
    $('#topType a').each(function () {
        $(this).removeClass('current');
    });

    $('#topType'+type).attr('class','current');
    // 重新查询
    submitQuery('query');
}

// 切换歌曲排序
function changeSort(sort) {
    // 修改样式
    $('#topSort a').each(function () {
        $(this).removeClass('current');
    });

    $('#topSort'+sort).attr('class','current');
    // 重新查询
    submitQuery('query');
}

// 监听回车搜索
function keydownEvent() {
    var e = window.event || arguments.callee.caller.arguments[0];
    // 13表示回车
    if (e && e.keyCode == 13 ) {
        // 重新查询
        submitQuery('query');
    }
}

// 全选
function selectallornot (e) {
    if (e.checked) {
        $("#content :checkbox").attr("checked",true);
    } else{
        $("#content :checkbox").attr("checked",false);
    };
}

// 播放歌曲
function playsongs() {
    // id集合
    var chk_value =[];
    // 获取所有选中的checkbox
    $('input[name="chartids"]:checked').each(function(){
        //将选中的值添加到数组chk_value中
        chk_value.push($(this).val());
    });
    // 把数组转换成字符串
    var ids = chk_value.join(',');
    // 获取musicSort
    var musicSort  = $($("#topSort a.current")[0]).attr("stype");
    // 跳转播放界面
    window.location.href = '/portal/play.do?ids='+ids+'&orderBy='+musicSort;
}

