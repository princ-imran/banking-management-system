<?php
include_once '../include/header.php';
include_once '../../../vendor/autoload.php';
$auth = new App\admin\auth\Auth();
$user = new App\admin\Users();
$users = $user->index();
$rule_users = $auth->rule_user();
?>
<div class="row">
	<div class="breadcrumbs">
		<div class="col-sm-4">
			<div class="page-header float-left">
				<div class="page-title">
					<h1>Add Bill Info</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<?php 
if(isset($_SESSION['id'])){
if((($_SESSION['id']) == ($rule_users['user_id'])) == (($rule_users['rule_id']) =='1')){

	?>
<div class="row">
	<div class="col-md-6 offset-md-3">
		<form action="views/admin/billing/store.php" method="POST" >
			<div class="card border border-success" style="padding: 39px 0px 2px; margin-top: 42px">
				<div class="form-group">
					<div class="col col-md-12">
						<select name="user_id" id="select" class="form-control" required="1">
							<option value="">Select Member</option>							
							<?php foreach ($users as $single_user){ ?>
							<option value="<?php echo $single_user['id']?>"><?php echo $single_user['name']?></option>
							<?php } ?>
						</select>						
					</div>
				</div>				
				<div class="form-group">
					<div class="col col-md-12">
						<select name="month" id="select" class="form-control" required="1">
							<option value="">Select Month</option>							
							<?php
                                for ($i = 1; $i <= 12; $i++)
	                                {
	                                	$month_name = date('F', mktime(0, 0, 0, $i, 1, 2011));           
	                                	echo "<option value='$month_name'>$month_name</option>";
                                    }
                                ?>
						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="col col-md-12">
						<select name="year" id="select" class="form-control" required="1">
							<option value="">Select Year</option>
							 <?php
                                for($i=2016;$i<=date("Y");$i++)
                                {
                                    echo "<option value='$i'>$i</option>";
                                }
                            ?>									
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col col-md-12">
						<div class="input-group">
							<div class="input-group-addon"><i class="fa fa-plus-square-o"></i></div>
							<input type="text" name="paid" id="input1-group1" placeholder="Paid TK" class="form-control">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col col-md-12">
						<div class="input-group">
							<div class="input-group-addon"><i class="fa fa-minus-square-o"></i></div>
							<input type="text" name="due" id="input1-group1" placeholder="Due TK" class="form-control">
						</div>
					</div>
				</div>
				<div class="card-footer">
					<button class="btn btn-success btn-sm" type="submit" name="submit">
					<i class="fa fa-dot-circle-o"></i> Submit
					</button>
					<button class="btn btn-danger btn-sm" type="reset">
					<i class="fa fa-ban"></i> Reset
					</button>
				</div>
			</div>
		</form>
	</div>
</div>
<?php }else{?>

<div class="row text-center">
	<div class="col-md-6 offset-md-3">		
		<div class="card border border-success" style="padding: 39px 40px;margin-top: 20px;">
				
			<h1>Its not your work!!!</h1>			
			<h2>This Page for admin</h2>			
			
		</div>	
	</div>
</div>

<?php }}?>
<?php include_once '../include/footer.php'; ?>