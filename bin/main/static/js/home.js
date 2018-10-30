$(document).ready(function(){
	  var nextPageFlag ="";
	   var sub_selected_a_index  ;
	    var selected_super_menu_index;
     $("#topNav span a").click(function(){   
    	
    	  var sub_menus=   $(this).parent().children();
    	   sub_selected_a_index = (sub_menus.index(this) +1);  
    	  
    	  	 //alert("选中的子标题的index:" + sub_selected_a_index);
    		 var super_menus_li=   $(this).parent().parent();
    		 //alert("父标题："+$("#topNav li").length);
    		  selected_super_menu_index =   ($("#topNav li").index(super_menus_li)+1);
    	  	 // alert("选中的父标题index :"+ selected_super_menu_index);   	  	  
    	/********************************需要跳转的子页面标记*****************************************/
    	  	  nextPageFlag = sub_selected_a_index + "-" + selected_super_menu_index
    	 
         var current_submenu_text  = $(this).text();
         $("#detailMenu ul li").remove();     
       
       
       var detail_menu =  $("#detailMenu ul");
       for(var i=0;i<sub_menus.length;i++){
            detail_menu.append("<li><span><a href=''> " + sub_menus[i].innerText+" </a> </span></li>");
       }
         var current_menu_item =   $("#detailMenu ul li");

	  	var current_menu_item =   $("#detailMenu ul li a");
	         for(var i=0;i<current_menu_item.length;i++){
	             if(current_menu_item[i].innerText ==current_submenu_text){
	
	                 current_menu_item.eq(i).css({"background":"#31adfc","font-weight":"bolder","color":"white"});
	             	break;
	             }
	         }
	     });
     
     function next_sub_menu_index(){
    	 alert("mmm");
    	 return nextPageFlag;
     }
    
     
     
     
     

});