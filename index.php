<html>
<head> 
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="panel panel-default" data-collapsed="0">
		
			<div class="panel-heading">
				<div class="panel-title">
					Quiz  <i class="entypo-down"></i>
				</div>
				
				 
			</div>
			<div class="panel-body">
			   
		  <form method="POST" action="check_answers.php">
		   
				  	<?php
						 
					$numbering = 1;
					
					
					$conn = new mysqli('localhost', 'root', '', 'exams');

					//this will arrange the questions randomly and 10 only
					$sql = "SELECT * FROM qtns where invoice='QS05358611'   ORDER BY rand() LIMIT 10";
				

				//$sql = "SELECT * FROM truefalse ORDER BY rand() LIMIT 10";
					$query = $conn->query($sql);
					while($row = $query->fetch_array()){
						?>
						<div>
						 <input type="hidden" value="<?php echo $numbering; ?>" name="numbering[]">
						 
						 
						<input type="hidden" value="<?php echo $row['id']?>" name="mem_id[]">
						 
						
						
						<input type="hidden" value="<?php echo $row['qtn']; ?>" name="qtn[]">
						<input type="hidden" value="<?php echo $row['answer']; ?>" name="answer[]">
						<input type="hidden" value="<?php echo $row['mark']; ?>" name="mark[]">
						
						
						
						
						 
							<h5><?php echo $numbering; ?>. <?php echo $row['qtn']; ?></h5>
							<input type="radio" name="option[<?php echo $numbering; ?>]" value="<?php echo $row['a'];?>"   >&nbsp;&nbsp; <font color="black"><B><?php echo $row['a'];?></B></font>    <br>
	  						<input type="radio" name="option[<?php echo $numbering; ?>]" value="<?php echo $row['b'];?>"> &nbsp;&nbsp;<font color="black"><B><?php echo $row['b'];?></B></font>  <br>
	  						<input type="radio" name="option[<?php echo $numbering;?>]" value="<?php echo $row['c'];?>"> &nbsp;&nbsp;<font color="black"><B><?php echo $row['c'];?></B></font>  <br>
	  						<input type="radio" name="option[<?php echo $numbering; ?>]" value="<?php echo $row['d'];?>"> &nbsp;&nbsp;<font color="black"><B><?php echo $row['d'];?></B></font>  <br>
							
						</div><br>
						<?php

					$numbering++;	
					}
					
				?>
		 
				 
					
		
	
	</div>
	</div>
 
	
	 <button type="submit" class="btn btn-info btn-icon btn-lg" style="width: 290px;" >
						Process 
						<i class="entypo-check"></i>
					</button>
	</div>
	</div>
 </form>	
 
</div>	
</body>
</html>