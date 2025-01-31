function enableButton() {
	if(document.getElementById("policy").checked){
		document.getElementById("insertbtn").disabled=false;
	}
	else {
		document.getElementById("insertbtn").disabled=true;
	}
}

//changing photos on click
function loadPhoto(imageNumber) {
    if (imageNumber == "image1") {
        var temporarySource = document.getElementById("image1").src;

        document.getElementById("image1").src = document.getElementById("bigImg").src;

        document.getElementById("bigImg").src = temporarySource;
    } else if (imageNumber == "image2") {
        var temporarySource = document.getElementById("image2").src;

        document.getElementById("image2").src = document.getElementById("bigImg").src;

        document.getElementById("bigImg").src = temporarySource;
    } else if (imageNumber == "image3")  {
        var temporarySource = document.getElementById("image3").src;

        document.getElementById("image3").src = document.getElementById("bigImg").src;

        document.getElementById("bigImg").src = temporarySource;
    }else if (imageNumber == "image4") {
        var temporarySource = document.getElementById("image4").src;

        document.getElementById("image4").src = document.getElementById("bigImg").src;

        document.getElementById("bigImg").src = temporarySource;
    }else if (imageNumber == "image5")  {
        var temporarySource = document.getElementById("image5").src;

        document.getElementById("image5").src = document.getElementById("bigImg").src;

        document.getElementById("bigImg").src = temporarySource;
    }else {
        var temporarySource = document.getElementById("image6").src;

        document.getElementById("image6").src = document.getElementById("bigImg").src;

        document.getElementById("bigImg").src = temporarySource;
    }


}
