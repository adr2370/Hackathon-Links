$ ->
	$('#submitButton').click ->
		val1 = $('#name').val()
		val2 = $('#address').val()
		val3 = $('#description').val()
		$.ajax
			url: "/saveurl"
			type: 'post'
			data: {name: val1, address: val2, description: val3}
			success: (response)->
				console.log response
		$('#name').val('')
		$('#address').val('')
		$('#description').val('')