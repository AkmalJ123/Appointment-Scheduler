<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>The Job</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style-02.css?version=1">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bx-briefcase icon'></i>
        <div class="logo_name">The Job</div>
        <i class='bx bx-menu' id="btn" ></i>
    </div>
    <ul class="nav-list">
     <!--   <li>
          <i class='bx bx-search' ></i>
         <input type="text" placeholder="Search...">
         <span class="tooltip">Search</span>
      </li> -->
      <li>
        <a href="<%= request.getContextPath() %>/admin">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Dashboard</span>
        </a>
         <span class="tooltip">Dashboard</span>
      </li>
      <li>
       <a href="<%= request.getContextPath() %>/admin/clients">
         <i class='bx bx-briefcase' ></i>
         <span class="links_name">Clients</span>
       </a>
       <span class="tooltip">Clients</span>
     </li>
     
     <li>
       <a href="<%= request.getContextPath() %>/admin/consultants">
		<i class='bx bx-bulb' ></i>
         <span class="links_name">Consultants</span>
       </a>
       <span class="tooltip">Consultants</span>
     </li>
     <li>
       <a href="<%= request.getContextPath() %>/admin/appointments">
         <i class='bx bx-calendar'></i>
         <span class="links_name">Appointments</span>
       </a>
       <span class="tooltip">Appointments</span>
     </li>
      <li>
       <a href="<%= request.getContextPath() %>/admin/reports">
         <i class='bx bxs-report'></i>
         <span class="links_name">Reports</span>
       </a>
       <span class="tooltip">Reports</span>
     </li>
     
     <li class="profile">
         <div class="profile-details">
           <img src="${pageContext.request.contextPath}/images/profile.png" alt="profileImg">
           <div class="name_job">
             <div class="name"><%= session.getAttribute("username") %></div>
             <div class="job">Web designer</div>
           </div>
         </div>
         <a href="<%= request.getContextPath() %>/login"><i class='bx bx-log-out' id="log_out" ></i></a>
     </li>
    </ul>
  </div>
  <section class="home-section">
      
      <div class="column-3">
			<div class="right-column">
			  <div class="container">
			    <div class="table-container">
			    <form action="<%= request.getContextPath() %>/admin/generate-report" method="POST">
    					<input type="hidden" name="action" value="generate-report">
					    <label for="monthSelect">Select Month:</label>
					    <select id="monthSelect" name="selectedMonth">
						    <option value="January">January</option>
						    <option value="February">February</option>
						    <option value="March">March</option>
						    <option value="April">April</option>
						    <option value="May">May</option>
						    <option value="June">June</option>
						    <option value="July">July</option>
						    <option value="August">August</option>
						    <option value="September">September</option>
						    <option value="October">October</option>
						    <option value="November">November</option>
						    <option value="December">December</option>
						</select>

					    <input type="submit" value="Generate Report" class=add-button>
				</form>

			    
			    </div>
			  </div>
			</div>
		</div>
			
	 </div>

  </section>
  <script>
  let sidebar = document.querySelector(".sidebar");
  let closeBtn = document.querySelector("#btn");
  let searchBtn = document.querySelector(".bx-search");

  closeBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("open");
    menuBtnChange();//calling the function(optional)
  });

  searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
    sidebar.classList.toggle("open");
    menuBtnChange(); //calling the function(optional)
  });

  // following are the code to change sidebar button(optional)
  function menuBtnChange() {
   if(sidebar.classList.contains("open")){
     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
   }else {
     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
   }
  }
  </script>
</body>
</html>