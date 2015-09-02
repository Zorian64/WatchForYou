function addItem(watchID) {
	$.ajax({
		url : 'http://localhost:8080/WatchForYou/cart/addItem?watchID='+watchID,
		
//		success : function(data) {
//			$('#result').html(data);
//		}
	});
}
function deleteItem(itemID) {
	$.ajax({
		url : 'http://localhost:8080/WatchForYou/cart/deleteItem?itemID='+itemID,
		
		
	});
	
	
    
}

