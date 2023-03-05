
<body>
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                      <img class="card-img-top" src="image/logo.jpeg" alt="Card image cap">
                </span>

                <div class="text logo-text">
                    <span class="name">PETS SHOP</span>
                    <span class="profession">Veterinarians</span>
                </div>
            </div>

            <i class='bx bx-chevron-right toggle'></i>
        </header>

        <div class="menu-bar">
            <div class="menu">

                <li class="search-box">
                    <i class='bx bx-search icon'></i>
                    <input type="text" placeholder="Tim Kiem....">

                </li>

                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="index.jsp">
                            <i class='bx bx-home-alt icon' ></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>
                     
                      <li class="nav-link">
                        <a href="Datlich.jsp">
                            <i class='bx bx-pie-chart-alt icon' ></i>
                            <span class="text nav-text">Dat Lich</span>
                        </a>
                    </li>

                   
						
                    <li class="nav-link">
                        <a href="Thongbao.jsp">
                            <i class='bx bx-bell icon'></i>
                            <span class="text nav-text">Thong Bao</span>
                        </a>
                    </li>

                     <li class="nav-link">
                        <a href="Order.jsp">
                            <i class='bx bx-bar-chart-alt-2 icon' ></i>
                            <span class="text nav-text">Order</span>
                        </a>
                    </li>
					

                    <li class="nav-link">
                        <a href="product.jsp">
                            <i class='bx bx-heart icon' ></i>
                            <span class="text nav-text">Sale</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="giohang.jsp">
                            <i class='bx bx-wallet icon' ></i>
                            <span class="text nav-text">Gio Hang</span>
                        </a>
                    </li>
                    
                      <li class="nav-link">
                        <a href="trangcanhan.jsp">
                            <i class='bx bx-user icon'></i>
                            <span class="text nav-text">Trang Ca Nhan</span>
                        </a>
                    </li>
                    
						<%
				if (auth != null) {
						%>
					   <li class="">
                    <a href="gioithieu.jsp">
                        <i class='bx bx-log-out icon' ></i>
                        <span class="text nav-text">Logout</span>
                    </a>
                </li>
                </ul>
            </div>
	<%
				} else {
				%>
            <div class="bottom-content">
                <li class="">
                    <a href="login.jsp">
                        <i class='bx bx-log-in icon' ></i>
                        <span class="text nav-text">Login</span>
                    </a>
                </li>
			<%
				}
				%>
                <li class="mode">
                    <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                    <span class="mode-text text">Dark mode</span>

                    <div class="toggle-switch">
                        <span class="switch"></span>
                    </div>
                </li>
                
            </div>
        </div>

    </nav>
   
</body>