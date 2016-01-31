$(function () {
    $("#includedContent").load("cabec.html");
});

function is_sorted(arr) {
    var len = arr.length - 1;
    for (var i = 0; i < len; ++i) {
        if (arr[i].name > arr[i + 1].name) {
            return false;
        }
    }
    return true;
}


function is_sorted_litle(arr) {
    var len = arr.length - 1;
    for (var i = 0; i < len; ++i) {
        if (arr[i].title > arr[i + 1].title) {
            return false;
        }
    }
    return true;
}

