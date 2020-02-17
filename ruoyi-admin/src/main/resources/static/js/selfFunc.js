
function  removeCart(dId){
    // console.log("点击了删除",dId);
    var conf = confirm('确定删除此商品吗？');
    if (conf) {

        $.ajax({
            cache: true,
            type: "POST",
            url: ctx + "custom/cart/remove/" + dId,
            async: false,
            error: function (request) {
                $.modal.alertError(request.msg);
            },
            success: function (data) {
                if (data.code === 0) {
                    $.modal.alertSuccess("商品已移除");
                }
            }
        });
    }
}