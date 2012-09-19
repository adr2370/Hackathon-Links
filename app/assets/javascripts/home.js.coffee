$ ->
	$('#deleteButton').click ->
		val1 = $('#delete').val()
		$.ajax
			url: "/deleteurl"
			type: 'post'
			data: {address: val1}
			success: (response)->
				console.log response
		$('#delete').val('')