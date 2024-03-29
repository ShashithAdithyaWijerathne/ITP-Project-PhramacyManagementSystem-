<!--* @author Hbs_adithya(IT18258486)
 *UI/UX Designer
 * SLIIT-->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Responsive vertical menu navigation</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:700, 600,500,400,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<link rel="stylesheet" href="./style/main.css">
		
		<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/data.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
		<script src="main.js"></script>
		<script>
			function nomsg(){
				var result = confirm("Are you want to reset");
				if(result){
					return true;
					
				}else
					return false;
			}
		
		</script>
		
		<script>
		function validateForm() {
			  var b = document.forms["addform"]["id"].value;
			  if (b == "") {
			    alert("ID must be filled out.");
			    return false;
			  }
			  var c = document.forms["addform"]["name"].value;
			  if (c == "") {
			    alert("Name must be filled out.");
			    return false;
			  }
			  
			  var e = document.forms["addform"]["tp"].value;
			  if (e == "") {
			    alert("Telephone Number must be filled out.");
			    return false;
			  }
			  var e = document.forms["addform"]["email"].value;
			  if (e == "") {
			    alert("Email must be filled out.");
			    return false;
			  }
		}
		</script>
		

		<style>
			.ad {
				position: absolute;
				width: 300px;
				height: 250px;
				border: 1px solid #ddd;
				left: 50%;
				transform: translateX(-50%);
				top: 250px;
				z-index: 10;
			}
			.ad .close {
				position: absolute;
				font-family: 'ionicons';
				width: 20px;
				height: 20px;
				color: #fff;
				background-color: #999;
				font-size: 20px;
				left: -20px;
				top: -1px;
				display: table-cell;
				vertical-align: middle;
				cursor: pointer;
				text-align: center;
			}
		</style>
		

	</head>
	<body>
		<div class="header">
			<div class="logo">
				
				<span>Brand</span>
			</div>
			<a href="#" class="nav-trigger"><span></span></a>
		</div>
		<div class="side-nav">
			<div class="logo">
				
				<span>Pharamacy</span>
			</div>
			<nav>
				<ul>
					<li>
						<a href="dashboard.jsp">
							<span></span>
							<span>Dashboard </span>
						</a>
					</li>
					<li class="active">
						<a href="add.jsp">
							<span></span>
							<span>Customer </span>
						</a>
					</li>
					<li>
						<a href="addStocks.jsp">

							
							<span>Stock </span>
						</a>
					</li>
					<li >
						<a href="addItem.jsp">
							
							<span>Item </span>
						</a>
					</li>
					<li>
						<a href="addSup.jsp">
							
							<span>Supplier </span>
						</a>
					</li>
					<li>
						<a href="addSupplierOrders.jsp">
							
							<span>Supplier Order </span>
						</a>
					</li>
					<li>
						<a href="#">
							
							<span>Customer Order</span>
						</a>
					</li>
					<li>
						<a href="#">
							
							<span>Employee </span>
						</a>
					</li>
					<li>
						<a href="addUtility.jsp">
							
							<span>Finance </span>
						</a>
					</li>
				</ul>
			</nav>
		</div>
		<div class="main-content">
			<!--Nav bar-->
				<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
						
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
						  <span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNav">
						  <ul class="navbar-nav">
							<li class="nav-item active">
							  <a class="nav-link" href="add.jsp">Add Customer <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="view.jsp">View Customer</a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="manageCustomer.jsp">Manage Customer</a>
							</li>
							<li class="nav-item">
							  <a class="nav-link disabled" href="reports.jsp">Reports</a>
							</li>
							
							
						  </ul>
						  
						</div>
					  </nav>
					  <!--Nav bar end-->

					  <!--add form-->
					  
					  <div class="addform" >
							<form class="form-horizontal" name="addform" onsubmit="return validateForm()" action="./SaveServlet" method="post">
								<div class="form-group">
								  <label class="control-label col-sm-2" for="pwd">Customer Name:</label>
								  <div class="col-sm-10">
									<input type="text" name = "cname" class="form-control" id="name" value="Shashith Adithya">
								  </div>
								</div>
								<div class="form-group col-md-4">
										<label for="inputState">Customer Type:</label>
										<select id="inputState" class="form-control" name="ctype">
										  <option selected>Regular</option>
						
										  <option>Bulk</option>
										</select>
									  </div>
								<div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Telephone No:</label>
										<div class="col-sm-10">
										  <input type="text" name="tp" class="form-control" id="tp" value="0719451383">
										</div>
									  </div>
									  <div class="form-group">
											<label class="control-label col-sm-2" for="pwd">Email:</label>
											<div class="col-sm-10">
											  <input type="text" name="email" class="form-control" id="email" value="adithyashashith@gmail.com">
											</div>
										  </div>
										  
							
								<div class="form-group">
										<button type="submit" data-toggle="modal" data-target="#exampleModal" class="btn btn-primary" >Submit</button>
										<button type="reset" data-toggle="modal" data-target="#exampleModal" class="btn btn-primary" onclick="return nomsg()">Reset</button>

								</div>
								
							  </form> 
							  
					  </div>
			
		</div>
		
	</body>
</html>
