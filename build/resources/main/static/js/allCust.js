$(document).ready(function(){
 		$("table tr th").css({"background-color":"#31adfc","color":"#FFFFFF"});
       var rows=  $("table tr").length;
       for(var i=1;i<rows;i++){
    	   if(i%2==0){
    		    $("table tr").eq(i).css("background-color","#EEEEE0")
    	   }else{
    		    $("table tr").eq(i).css("background-color","#EEE9E9")
    	   }
       }
       
       
       
      
});

 function confirmDelete(custId){
    	   //alert("delete");
    	     if (!confirm("确认要删除？")) {
           		 window.event.returnValue = false;
       		 }else{
       			 //调用servlet ，删除
       			 window.location="cust/delete?id="+custId;
       		 }
       }