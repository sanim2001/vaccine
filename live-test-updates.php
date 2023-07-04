<?php 
session_start();
error_reporting(0);
//DB conncetion
include_once('includes/config.php');
//error_reporting(0);

?>
<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Government Vaccination Information Portal</title>
    <link rel="icon" type="image/x-icon" href="fav_logo/1.png">
    <link rel="stylesheet" href="homepage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    

</head>

<body data-bs-theme="light" id="page-top">

  

<div class="container_menu bg-primary-subtle fixed-top">
  <div class="container">
    <div class="fix_container">
      <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><b> Vaccines</b></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav nav-pills ms-auto">
              <li class="nav-item">
                <a class="nav-link " aria-current="page" href="index.php">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-danger" href="live-test-updates.php">Live_Updates</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-danger" href="manage-phlebotomist1_display.php">Notice</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="about.php">About_Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.php">Contact_Us</a>
              </li>

              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="new-user-testing.php">User_registration</a>
              </li>

             <li class="nav-item">
                <a class="nav-link" href="login.php">Admin</a>
              </li><li class="nav-item">
                
              <li class="nav-item">
                <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16" id="toggleDark">
                  <path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
                </svg></a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </div>
</div>
    <!-- Page Wrapper -->

    <div id="wrapper" style="margin-top:  92px;">

        <!-- Sidebar -->
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid" style="padding:70px">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800" style="margin-top: 50px; padding: 20px 0;">Vaccination Dose Status </h1>
    

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Division wise Vaccination count Dashboard</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <form name="assignto" method="post">
                    <table class="table table-bordered"  width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Division Name</th>
                                            <th>Total Vaccination</th>
                                        </tr>
                                    </thead>
                                      <tfoot>
                                            <tr>
                                            <th>Sno.</th>
                                            <th>Division Name</th>
                                            <th>Total Vaccination</th>
                                         
                                        </tr>
                                    </tfoot>
                                    <tbody>
<?php $query=mysqli_query($con,"select  tblpatients.State as state,count(tbltestrecord.id) as totaltest from tbltestrecord
join tblpatients on tblpatients.MobileNumber=tbltestrecord.PatientMobileNumber
group by tblpatients.State
    ");
$cnt=1;
while($row=mysqli_fetch_array($query)){
?>
            
                                        <tr>
                                            <td><?php echo $cnt;?></td>
                                            <td><?php echo $row['state'];?></td>
                                            <td><?php echo $row['totaltest'];?></td>
                                        </tr>
<?php $cnt++;} ?>
                                    </tbody>
                                </table>
                                     </form>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


            <!-- Footer -->
    <?php include_once('includes/footer.php');?>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
    <script>
      const toggle = document.getElementById('toggleDark');
      const body = document.querySelector('body');

      toggle.addEventListener('click', function(){
          this.classList.toggle('bi-moon');
          if(this.classList.toggle('bi-brightness-high-fill')){
              body.style.background = 'white';
              body.style.color = 'black';
              body.style.transition = '2s';
          }else{
              body.style.background = 'black';
              body.style.color = 'white';
              
              body.style.text = 'white';
              body.style.transition = '2s';
          }
      });
      const swiftUpElements = document.querySelectorAll('.swift-up-text');

      swiftUpElements.forEach(elem => {

        const words = elem.textContent.split(' ');
        elem.innerHTML = '';

        words.forEach((el, index) => {
          words[index] = `<span><i>${words[index]}</i></span>`;
        });

        elem.innerHTML = words.join(' ');

        const children = document.querySelectorAll('span > i');
        children.forEach((node, index) => {
          node.style.animationDelay = `${index * .3}s`;
        });

      });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>
</html>
