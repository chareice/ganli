!function(){$("#left_nav_thumb").change(function(){var t,n,e;return e=window.URL||window.webkitURL,t=this.files[0],n=new Image,n.src=e.createObjectURL(t),$(".left_nav_thumb .thumb").html(""),$(".left_nav_thumb .thumb").html(n),$(".left_nav_thumb .thumb").show()}),$("#clear-thumb-button").click(function(){return confirm("确定删除缩略图？")&&($("#clear-thumb").val(1),$(".thumb").hide()),!1})}.call(this);