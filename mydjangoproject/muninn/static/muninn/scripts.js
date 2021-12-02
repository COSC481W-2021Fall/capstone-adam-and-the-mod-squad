/*!
    * Start Bootstrap - SB Admin v7.0.3 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2021 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
    // 
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});

function loginSuccess(){
    var text = document.getElementById("alertMsg");
    text.style.display="none";
}
function register(){
    console.log("event triggered");
    document.getElementById("alertMsg").innerHTML="<strong>Successfully created an account</strong>";
}

function acctSuccess(){
    alert("Account successfully created!");
}

function editTasks(id) {
    var editInput = document.getElementById(id);
    editInput.style.display = "block";
}

function editHabits(id) {
    var editInput = document.getElementById(id);
    editInput.style.display = "block";
}
