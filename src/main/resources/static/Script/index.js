 



 $(function(){
            $(".toggle").on("click", function(){
                if($(".link").hasClass("active")){
                    $(".link").removeClass("active");
                    $(this).find("a").html("<ion-icon name='menu-outline'></ion-icon>");
                } else {
                    $(".link").addClass("active");
                    $(this).find("a").html("<ion-icon name='close-outline'></ion-icon>");
                }
            }); 
        });
       
   let slideIndex = 1;
showSlides(slideIndex);

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
 
 slides[slideIndex-1].style.display = "block";
 dots[slideIndex-1].className += " active";
}
function plusSlides(n) {
        showSlides((slideIndex += n));
        showSlides(slideIndex);
    }

 let currentSlideIndex = 1;
showCurrentSlide(currentSlideIndex);

function showCurrentSlide(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {currentSlideIndex = 1}
  if (n < 1) {currentSlideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
 
 slides[currentSlideIndex-1].style.display = "block";
 dots[currentSlideIndex-1].className += " active";
}
function nextSlide() {
        showCurrentSlide(currentSlideIndex += 1);
    }

    function previousSlide() {
        showCurrentSlide(currentSlideIndex -= 1);
    }

    


function plusDivs1(n) {
    showSlides1(slideIndex1 += n);
  }

  function currentDiv1(n) {
    showSlides1(slideIndex1 = n);
  }

  function showSlides1(n) {
      var i;
    var x = document.getElementsByClassName("mySlides1");

    // Handle wrapping around to the last slide
    if (n > x.length) {
      slideIndex1 = 1;
    }

    // Handle wrapping around to the first slide
    if (n < 0) {
      slideIndex1 = x.length;
    }

    // Hide all slides
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }

    // Display the current slide
    x[slideIndex1 - 1].style.display = "block";
  }

  

  // Function for property card 2
  function plusDivs2(n) {
    showSlides2(slideIndex2 += n);
  }

  function currentDiv2(n) {
    showSlides2(slideIndex2 = n);
  }

  function showSlides2(n) {
    var i;
    var x = document.getElementsByClassName("mySlides2");

    // Handle wrapping around to the last slide
    if (n > x.length) {
      slideIndex2 = 1;
    }

    // Handle wrapping around to the first slide
    if (n < 0) {
      slideIndex2 = x.length;
    }

    // Hide all slides
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }

    // Display the current slide
    x[slideIndex2 - 1].style.display = "block";
  }

  // Function for property card 3
  function plusDivs3(n) {
    showSlides3(slideIndex3 += n);
  }

  function currentDiv3(n) {
    showSlides3(slideIndex3 = n);
  }

  function showSlides3(n) {
    var i;
    var x = document.getElementsByClassName("mySlides3");

    // Handle wrapping around to the last slide
    if (n > x.length) {
      slideIndex3 = 1;
    }

    // Handle wrapping around to the first slide
    if (n < 0) {
      slideIndex3 = x.length;
    }

    // Hide all slides
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }

    // Display the current slide
    x[slideIndex3 - 1].style.display = "block";
  }

  // Add similar functions for other property cards if needed
// Function for property card 4
  function plusDivs4(n) {
    showSlides4(slideIndex4 += n);
  }

  function currentDiv4(n) {
    showSlides4(slideIndex4 = n);
  }

  function showSlides4(n) {
    var i;
    var x = document.getElementsByClassName("mySlides4");

    // Handle wrapping around to the last slide
    if (n > x.length) {
      slideIndex4 = 1;
    }

    // Handle wrapping around to the first slide
    if (n < 0) {
      slideIndex4 = x.length;
    }

    // Hide all slides
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }

    // Display the current slide
    x[slideIndex4 - 1].style.display = "block";
  }

// Function for property card 4
  function plusDivs5(n) {
    showSlides5(slideIndex5 += n);
  }

  function currentDiv5(n) {
    showSlides5(slideIndex5 = n);
  }

  function showSlides5(n) {
    var i;
    var x = document.getElementsByClassName("mySlides5");

    // Handle wrapping around to the last slide
    if (n > x.length) {
      slideIndex5 = 1;
    }

    // Handle wrapping around to the first slide
    if (n < 0) {
      slideIndex5 = x.length;
    }

    // Hide all slides
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }

    // Display the current slide
    x[slideIndex5 - 1].style.display = "block";
  }
  // Initialize slide index for each property card
  var slideIndex1 = 1;
  var slideIndex2 = 1;
  var slideIndex3 = 1;
  var slideIndex4 = 1;
  var slideIndex5 = 1;

  // Call the showSlides function for each property card on page load
  showSlides1(slideIndex1);
  showSlides2(slideIndex2);
  showSlides3(slideIndex3);
  showSlides4(slideIndex4);
  showSlides5(slideIndex5);