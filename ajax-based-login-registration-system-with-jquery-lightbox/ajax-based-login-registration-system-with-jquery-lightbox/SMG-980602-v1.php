<?php
  session_start();
     if (isset($_SESSION['username'])) {
         $user= $_SESSION['username'];}
?>
<!doctype html>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Untitled Document</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.2/assets/owl.carousel.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.2/assets/owl.theme.default.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.2/assets/owl.theme.green.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link href="file://D|/ArshadThesis/Game1/Sliders/css/bootstrap-4.3.1.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.2/owl.carousel.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery.appendgrid@2/dist/AppendGrid.js"></script>
	 <!-- <script src="//code.jquery.com/jquery-1.12.4.js"></script>-->
  <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="focusify.js"></script>-->
	
	<style>
		
		#bottom1{
   
			
    bottom:0;
    width:100%;
	border: #CDAC75;
    height:100px;
   
    text-align:center;
    font-size:40px;
    color:white;
			position: relative;
}
		.bottom{
    /*position:absolute;*/
			
    /*bottom:0;*/
    width:50%;
			border-top-color: black;
			border-bottom-color:white;
			border-left-color: black;
			border-right-color: black;
	/*border-color: white;*/
	border-width: medium;
	border-style:solid;
    height:100px;
    
    text-align:center;
    font-size:40px;
    color:#ADA9A9;
	position: relative;
}
		.owl-carousel .item{
			background-color: #73427C;
		    	width: 70px;
				height:30px;
			margin: 1px;

	
		}
		.owl-carousel .item1{
			background-color: #73427C;
		    	width: 20px;
				height:20px;
			margin: 1px;

	
		}
/*				.col{
			background-color: #73427C;
		    	width: 30px;
				height:30px;

	
		}*/
				.inline {
  display: inline-block;
}
/*				#content {
	position: absolute;
}*/
	</style>

</head>
<body>	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<div><br/></div>
	<div id="score" class="container row" style="width:20px"  style="background-color:lightpink;" ><div ><lable id="lablescore" class="col-xs-6 col-md-4">Score=0</lable></div><div ><lable id="lablehighscore" class="col-xs-6 col-md-4">Score=0</lable></div><div> <h5> <br/></h5></div></div>
	
<div id="content" class="div container">

</div>	
	<!--<div id="testclone" class="row embed-responsive">-->
		<div  class="container">
			<br/>
   <button  type="button" id="add" class="btn active btn-sm"><span class="glyphicon glyphicon-plus"></span>Add</button>
			
</div>
	<div><br/> <br/></div>

	<div id="bottom1 row">
<div  class="bottom col-lg-8 col-xs-12" style="float:left"><div > <h3  style="font-size:2vw;">Identified Patterns</h3></div><div id="identy"> <h6  style="font-size:1vw;"></h6></div></div>
<div  class="bottom col-lg-8 col-xs-12" style="float:right"><div> <h3 style="font-size:2vw;">Approved Patterns</h3></div><div id="approvepatterndiv"></div></div>
		</div>

	<script>
		var arrayapprove=[];
		var scorepat=0;
		var userid="<?php echo $user; ?>";
		$(document).ready(function(){
			var strpatern="";
			var score=0;
			var highscore=0;
			var highcontent=document.createElement('div');
			var highcontentscore=document.createElement('div');
			const target = document.getElementById('content');
			var cln; 
           // var tiles  = $(".divrow");
            //var margin = 5;
            //var height = tiles.height();
         //   var threshold = "25%";
			var arrayscore=[];
			var arraypattern=[];
			var arrayflag=[];
			
	 $.ajax({
    method: "GET", url: "getNeighborhoodcubewithDB220498v3.php",  //dataType:"json",

  }).done(function( data) {

   var result = jQuery.parseJSON(data);
		 for(var i=0;i<result.length;i++){
			// array_push(arrayscore, result[i]);
			 arrayscore.push(result[i]);
		 }
	

});
			  $( function() {
    $( "#content" ).sortable();
    $( "#content" ).disableSelection();
  } );
	

			/*$("#i").mouseover(function(){
				alert("Na");
			});*/
	 
// config object
const config = {
  attributes: true,
  attributeOldValue: true,
  characterData: true,
  characterDataOldValue: true,
  childList: true,
  subtree: true
};

// subscriber function
function subscriber(mutations) {
  mutations.forEach((mutation) => {
    // handle mutations here
   // alert(mutation);
	  $( "#identy" ).empty();
	  		score=0;	
		    var j=0;
	  var arraypattern1=[];
	   var tempstr="";
	   var flagstr="";
			$('.owl-carousel').each(function(index){
				
				var length=$('.owl-carousel').length;
				var flag=0;
				
				for(var k=(index+1);k<length;k++){
					var t=1;
					tempstr=tempstr+".";
					flagstr=flagstr+".";
					var lengthpattern=0;
					for(var i=0;i<22;i++){
						
				var item1=$('.owl-item.active').eq((index*22)+i);
				var item2=$('.owl-item.active').eq(((k)*22)+i);
							var text1=$(item1).text();
							var text2=$(item2).text();
						if(text1!='X'&& text1==text2){
							flag=0;
					       score=score+1;
							tempstr=tempstr+text1;
							lengthpattern++;
							

				}
				else{
					if(flag==0){
						flagstr=flagstr+index.toString()+","+k.toString();
						
						flagstr=flagstr+","+i.toString()+","+lengthpattern.toString();
						flagstr=flagstr+".";
						tempstr=tempstr+".";
						flag=1;
						lengthpattern=0;
					}
					else{}

				}
  
					}
					var array = tempstr.split(".");
					arraypattern=tempstr.split(".");
					arrayflag=flagstr.split(".");
					var tempstr1="";
					
				
					}

								});
	                       
/*	               if( score > highscore ){
							   highscore = score;
					         $("#lablehighscore").text("HighScore: "+highscore);
							$("#lablescore").text("Score: "+score);
							  var a=$('body').html();
							   $(highcontent).html($("#content").html());
					   $(highcontentscore).html($("#score").html());
					   
					   
	
						   } 
	  else{
                          
							$("#lablescore").text("Score: "+score);}
	  							*/
						
					//tempstr1=array[i]+ " ,Score: " +Math.round(temps)+ " ;";
	             //1 html2 = $("<div class='container owl-carousel owl-theme row ' style='float:left'><br></br></div>");
				        for(var i=0;i<arraypattern.length-1;i++){
							var t=1;
							var fl=1;
							for(var p=0;p<arrayapprove.length;p++){
								if(arraypattern[i]==arrayapprove[p]){
									t=0;
									break;
								}
							}
							var first=arraypattern[i].charAt(0);
							var last=arraypattern[i].charAt(arraypattern[i].length-1);
							var nei=arraypattern[i].length-1;
							var temps=nei * getscorenumber(first,last,nei)*1000;
							tempstr1="";
							tempstr1=Math.round(temps);
							//arraypattern1.push(tempstr1);

							if(arraypattern[i].length>1&& t==1){
								
			$('#identy .owl-carousel').each(function(index){
				var c=$('#identy .owl-carousel > .pattern').eq(index).text();
				var c2=$('#identy .owl-carousel > .flagpattern').eq(index).text();
				var c3=$('#identy .owl-carousel > .scorepattern').eq(index).text();
				var c4=parseInt(c3);
				c4=c4+tempstr1;
				if(arraypattern[i]==c){
					$('#identy .owl-carousel > .flagpattern').eq(index).text(c2+"; "+arrayflag[i]);
					var c3=$('#identy .owl-carousel > .scorepattern').eq(index).text(c4);
					fl=0;
				}
			});
						if(fl==1){
								var str="";
								str=arraypattern[i];
			var html2 = $("<div class='container owl-carousel owl-theme row ' style='float:left' onmouseover=hoverdivOpen(event)></div>");
								for(var j=0;j<str.length;j++){
									if(str.charAt(j)=='A'){
			$(html2).append($("<div class='item1'>").css("background-color","#3ED797"));}
									
									if(str.charAt(j)=='C'){
			$(html2).append($("<div class='item1'>").css("background-color","#5CD8DE"));}
									
									if(str.charAt(j)=='G'){
			$(html2).append($("<div class='item1'>").css("background-color","#EDCB1B"));}
									
									if(str.charAt(j)=='U'){
										$(html2).append($("<div class='item1'>" ).css("background-color","##9F2766"));}
}
								
			$(html2).append($("<h5 style='font-size:1vw' class='scorepattern inline'</h5>").text(tempstr1).css("color","#000000")).append($("<h5 style='font-size:1vw'class='pattern inline'</h5>").text(arraypattern[i]).css("color","#FFFFFF")).append($("<h5 style='font-size:1vw'class='flagpattern inline'</h5>").text(arrayflag[i]).css("color","#000000")).append($("<button type='button' class='btn  btn-sm approvepattern' onclick='approvepattern()'>").append("<span class='glyphicon glyphicon-ok'></span>")).append($("<button type='button' class='btn  btn-sm removepattern' onclick='removepattern()'>").append("<span class='glyphicon glyphicon-remove'></span>"));
								$('#identy').append(html2);
						}
									}
								}
		
	 // $('#identy').append(html2);
	  
  });
};
			

// instantiating observer
const observer = new MutationObserver(subscriber);


observer.observe(target, config);
			


				$("#add").click(function(){ 
          		 var str="";
						 $.ajax({
    method: "GET", url: "getSequenceefromDB220498v3.php",  //dataType:"json",

  }).done(function( data) {

   var result = jQuery.parseJSON(data);
		 
			
							 for(var i=0;i<result[0]['Sequence'].length;i++){
							str=str+result[0]['Sequence'][i];	 
							 }
							
		 //str=strsequence;
							// alert(str);
						var html1=$("<div class='divrow row'>");
           html = $("<div class='container owl-carousel owl-theme row'>");
				        for(var i=0;i<15;i++){
			$(html).append($("<div class='item col-xs-6 col-md-4'>").css("background-color","#FFFFFF")
           .append("<h5>X</h5>").css("color","#FFFFFF"));
		}
		for(var i=0;i<str.length;i++){
			if(str.charAt(i)=='A'){$(html).append($("<div class='item col-xs-6 col-md-4'>").css("background-color","#3ED797")
           .append("<h5>A</h5>").css("color","#3ED797"));}
			if(str.charAt(i)=='C'){$(html).append($("<div class='item col-xs-6 col-md-4'>").css("background-color","#5CD8DE")
           .append("<h5>C</h5>").css("color","#5CD8DE"));}
			if(str.charAt(i)=='G'){$(html).append($("<div class='item col-xs-6 col-md-4'>").css("background-color","#EDCB1B")
           .append("<h5>G</h5>").css("color","#EDCB1B"));}
			if(str.charAt(i)=='U'){$(html).append($("<div class='item col-xs-6 col-md-4'>").css("background-color","#9F2766")
           .append("<h5>U</h5>").css("color","#9F2766"));}
					
				}
				
        for(var i=0;i<15;i++){
			$(html).append($("<div class='item col-xs-6 col-md-4'>").css("background-color","#FFFFFF")
           .append("<h5>X</h5>").css("color","#FFFFFF"));
		}
/*	$(html).append($("<div>").css("background-color","#FF0000")
           .append("<lable>row</lable>").css("color","#00FF00"));*/
					$(html1).append($("<div class='inline' style='float:left'>").append(html));
					$(html1).append($("<div class='mydiv inline' style='float:right'>").append("<button type='button' class='btn btn-sm' onclick='delete1()'>x</button>"));
					
     $("#content").append(html1);
			$(html).owlCarousel({
                  items:22,
				dots:false,
				startPosition:15
           
				});
		
});

               			});

					function getscorenumber(firstitem,lastitem,neighbor){
		var scoretemp=0;
		for(var i=0;i<arrayscore.length;i++){
			if(arrayscore[i]['firstitem']==firstitem && arrayscore[i]['lastitem'] && arrayscore[i]['neighbor']==neighbor)
			   {scoretemp=arrayscore[i]['Avalue'];}
		}
				return scoretemp;
	};
			////////////////////////////////////////////////////////////////////
					
			////////////////////////////////End Document/////////////////////////
			
			});
				
	function hoverdivOpen(e){
		//var flag=1;
		//var firstflag=1;
		
		$('#identy .owl-carousel').hover(function (event) {
			
			if(event.handled !== true){
           var index = $('#identy .owl-carousel').index(this);
       // alert(index);
			var c1=$('#identy .owl-carousel').eq(index);
				var c=$('#identy .owl-carousel > .flagpattern').eq(index).text();
				var arraycountflag=c.split(";");
				for(var counterc=0;counterc<arraycountflag.length;counterc++){
				var arraytempflag=arraycountflag[counterc].split(",");
				//var c=$(this .item)
				var firstpat=parseInt(arraytempflag[0]);
				var secound=parseInt(arraytempflag[1]);
				var positionflag=parseInt(arraytempflag[2]);
				var lengthflagpat=parseInt(arraytempflag[3]);
				//alert(positionflag.toString());
				$('.owl-carousel').each(function(index){
					for(var i=positionflag-1;i>positionflag-lengthflagpat-1;i--){
					$('.owl-item.active .item').eq((firstpat*22)+i).css( "border", "2px double red" );
					$('.owl-item.active .item').eq((secound*22)+i).css( "border", "2px double red" );
				}
				});
				}
    
			event.handled = true;
				//alert(c);
		}
			return false;
		})  .mouseout(function() {
    $('.owl-carousel').each(function(index){
					//for(var i=positionflag-1;i>positionflag-lengthflagpat-1;i--){
					//$('.owl-item.active .item').eq((firstpat*22)+i).css( "border", "2px double white" );
					$('.owl-item.active .item').css( "border", "2px double white" );
				//}
				});
  });	
		
};
		function removepattern(){
			//var removeflag=1;
			$('#identy .owl-carousel').click(function(event) {
			if(event.handled !== true){
				var index = $('#identy .owl-carousel').index(this);
			    var pattern_sequence=$('#identy .owl-carousel > .pattern').eq(index).text();
				arrayapprove.push(pattern_sequence);
				$(this).remove();
				//alert(pattern_sequence);
				event.handled = true;
			}
				return false;
			});
			//var pattern_sequence=$(this).closest('.owl-carousel').find('.pattern').text();
			 
		};
				function approvepattern(){
					//var mainflag=1;
					// var fla=1;
					//var flag=1;
					
			$('#identy .owl-carousel').click(function(event) {
			if(event.handled !== true){
			
				var index = $('#identy .owl-carousel').index(this);
			   var c1=$('#identy .owl-carousel').eq(index);
				var pattern_sequence=$('#identy .owl-carousel > .pattern').eq(index).text();
				var ScorePattern=$('#identy .owl-carousel > .scorepattern').eq(index).text();
				
				scorepat+=parseInt(ScorePattern);
				$('#lablescore').text("Score= "+scorepat);
				var content1=$(this).clone();
				$('#identy .owl-carousel').eq(index).remove();
				$(this).remove();
				//var strapprove=$(this > .pattern).text();
			    var html3=$("<div class='container owl-carousel owl-theme row'>");
				content1.closest('.owl-carousel').find('.removepattern').remove();
				content1.closest('.owl-carousel').find('.glyphicon-ok').addClass('glyphicon-remove');
				 html3.html(content1);
				 //arrayapprove.push(pattern_sequence);
				
			     
				$('#approvepatterndiv').append(html3);
				
				  $.ajax({
                    type: "POST",
                    url: "insert.php",
                    data: {"pattern_sequence":  pattern_sequence , "userid": userid, "ScorePattern": ScorePattern},
                    success: function(data) {
                      // alert("sucess");
                    }
                });
				//alert();
				arrayapprove.push(pattern_sequence);
				//alert(arrayapprove);
				
				event.handled = true;
			}
			return false;	
    });
						$('#approvepatterndiv .owl-carousel').click(function(event) {
							if(event.handled !== true){
								var index=$(this).index(this);
								
								//var pattern_sequence=$('#approvepatterndiv .owl-carousel > .pattern').eq(index).text();
								var pattern_sequence=$(this).closest('.owl-carousel').find('.pattern').text();
								var scorepattern=$(this).closest('.owl-carousel').find('.scorepattern').text();
								//var scorepattern=$('#approvepatterndiv .owl-carousel > .scorepattern').eq(index).text();
								 var scorepat1=scorepat - parseInt(scorepattern);
								scorepat=scorepat1;
				                $('#lablescore').text("Score= " + scorepat1);
															  $.ajax({
                    type: "POST",
                    url: "delete.php",
                    data: {"pattern_sequence":  pattern_sequence , "userid": userid},
                    success: function(data) {
                      // alert("sucess");
                    }
                });
								$(this).remove();
					
								//alert(scorepattern);
								
								event.handled = true;
							}
							return false;
							
    });		
							
		};
		
		


	
		function delete1() {
			$("#content .mydiv").click(function(){
				var par=$(this).parent();
				par.remove();
				//this.remove();
				var index1=this.index;
				
			});

	
			
		};
		

			
	</script>

</body>
</html>
