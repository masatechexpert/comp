$(function () {
  $('.delete_btn').on('click', function (e) {
    e.preventDefault();
    e.stopPropagation();
    let href = $(this).attr('href');
    let todo.id = $(this)[0].dataset['todoId'];
    $.ajax({
      type: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
      },
      dataType: 'json',
      url: href,
      data: JSON.stringify({ todo.id: todo.id }),
      success: function (res) {
        $(".row[data=" + todo.id + "]").empty();
        $(".row[data=" + todo.idv + "]").html(
          `<span>削除しました</span>`
        );
        return false;
      },
      error: function (res) {
        return false;
      }
    })
  });
});