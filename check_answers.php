<?php
session_start();
include('dbcon.php');
  
				// $date = $_POST['date'];
				  
				 
				 $answer = $_POST['answer']; 

//to save the answer picked				 
				 $option = $_POST['option'];  

// $answer=$_POST['answer_'.$iterate];
  			
for($i=0; $i < count($_POST['mem_id']); $i++){
		 
		 $data[$_POST['mem_id'][$i]]['numbering'] = $_POST['numbering'][$i];
		$data[$_POST['mem_id'][$i]]['mark'] = $_POST['mark'][$i];
		$data[$_POST['mem_id'][$i]]['answer'] = $_POST['answer'][$i];
		$data[$_POST['mem_id'][$i]]['qtn'] = $_POST['qtn'][$i];
	 
		 
	}	 
					

	foreach($data as $key => $value){
		
		// to comepare selected option to answer 
	
           if ($_POST['answer'] == $_POST['option'] ){
			   
			//if answer is the same as option mark 1 and and save the selected option by user 
			
			$result = mysqli_query($con,"INSERT INTO answers(date,qtn,qtn2,answer,mark,yansa) VALUES 
	                                            (CURDATE(),'$value[qtn]','$value[numbering]','$value[answer]','1','$option')")or die(mysqli_error($con)); 	//change 3x		
					} else {

//else mark 0 if not and save the selected option by user 						
			$result = mysqli_query($con,"INSERT INTO answers(date,qtn,qtn2,answer,mark,yansa) VALUES 
	                                             (CURDATE(),'$value[qtn]','$value[numbering]','$value[answer]','0','$option')")or die(mysqli_error($con)); 	//change 3x	
												}
			 }
 	 			  	
?>
