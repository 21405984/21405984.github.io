 $(document).on("scroll", function(){

            if ($(document).scrollTop() > 80){
                $(".navbar").addClass("shrink");
            } else {
                $(".navbar").removeClass("shrink");
            }
if ($(document).scrollTop() > 30){
                $("#Logo").addClass("tiny");
            } else {
                $("#Logo").removeClass("tiny");
            }

      });