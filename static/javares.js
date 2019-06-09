$("#main-header").click(function(){
	$.get("/");
    });
    set_content_in_divs(paragraphs);
    set_header();
});

function set_secret_message(msg) {
    p = $("#second-paragraph");
    p.html(msg)
    p.css("color","red")
}

function set_content_in_divs(paragraphs) {
    $.each(paragraphs, function(i, d) {
      p = $("#p-" + i)
      p.html("<p>" + d + "</p>")
    })
  }
  
function set_header() {
    d = new Date();   
    p = $("#main-header")
    p.html("Что день " + d.getFullYear()+"-"+d.getMonth()+"-"+d.getDate()+" готовит")
    /*p.html("Что день " +"dsdasd" + " готовит")*/
  }