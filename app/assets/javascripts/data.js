jQuery(function(){

	$("#submitbutton").click(function(){
		console.log("Button Clicked");
		name = $("#name").val();
		city = $("#city").val();
		description = $("#description").val();
		rating = $("#rating").val();
		error = '<div class="alert alert-warning alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
		valid = true;
		if (name == null || name == "") {
			error += "Please Enter a Name <br>";
			valid = false;
		}

		 if(city == null || city == ""){
			error += "Please Enter a valid City <br>";
			valid = false;
		}

		 if (description == null || description == "") {
			error += "Please Enter a Description <br> ";
			valid = false;
		}

		 if (rating == null || rating == 0) {
			error += "Please give a valid Rating ";
			valid = false;
		};
		error += '</div>';
		if (valid) {
			return true;

		}
		else {
			$("#error-note").html(error)
			return false;

		}

	})
})