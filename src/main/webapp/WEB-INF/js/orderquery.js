//document.getElementById("myBtn")=function(){orderquery()};

	$(document).ready(function(){
		$('#submitForm').submit(function(){
			var formData = new Object;
			formData.outorder = $('#outorder').val();
			formData.order4G = $('#order4G').val();
			formData.phonenum = $('#phonenum').val();
			formData.tnsselect = $('#tnsselect').val();
			var JsonData = JSON.stringify(formData);
			console.log(JsonData);
			var htmlcon="";
			$.ajax({
				type : "POST",
				url : "getDATA",
				dataType : 'json',
				contentType: "application/json",
				data : {"outorder":outorder,"order4G":order4G,"phonenum":phonenum,"tnsselect":tnsselect},
				success : function(data) {
					for (var i in data){
						htmlcon="<td>"+data[i]+"</td>";
					}
				}
			});
		});
	});