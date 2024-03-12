<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <title>Axel Planner</title>
    <link href="./style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

<div class="container m-5 mx-auto">

    <!-- Header -->
    <div class="row">
        <div class="col-md-6 bg-primary-subtle rounded-5 text-center">
            <h1 class="mb-0 p-3 fw-bold">Axel Planner</h1>
        </div>
    </div>

    <div class="row mt-3 g-5">

        <!-- Monday -->
       <div class="col-md-3 text-center">
           <div>
               <div class="row bg-secondary-subtle rounded-5">
                  <h1 class="mb-0 p-3 fw-bold">Mon</h1>
               </div>

               <!-- Tasks -->
               <div class="mt-3 row text-start">
                   <% ArrayList<String> mon_tasks = (ArrayList<String>) request.getSession().getAttribute("mon_tasks");
                       if (mon_tasks != null && !mon_tasks.isEmpty()) {
                           for (String mon_task : mon_tasks) {
                   %>
                   <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                       <input class="form-check-input mt-0" type="checkbox">
                       <h1 class="h6 text-truncate w-100 mb-0"><%= mon_task%></h1>
                   </div>
                   <%
                           }
                       } else {

                   %>
                   <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                       <h1 class="h6 text-truncate w-100 mb-0">No Tasks</h1>
                   </div>
                   <%
                       }
                   %>
               </div>

               <!-- Input -->
               <form class="mt-3 row" action="add-task" method="post">
                   <input class="form-control" type="text" name="mon_task" id="mon_task" placeholder="Add Task">
                   <button class="btn btn-secondary" type="submit">Add</button>
                </form>

           </div>
       </div>

        <!-- Tuesday -->
        <div class="col-md-3 text-center">
            <div>
                <div class="row bg-secondary-subtle rounded-5">
                    <h1 class="mb-0 p-3 fw-bold">Tue</h1>
                </div>

                <!-- Tasks -->
                <div class="mt-3 row text-start">
                    <% ArrayList<String> tue_tasks = (ArrayList<String>) request.getSession().getAttribute("tue_tasks");
                        if (tue_tasks != null && !tue_tasks.isEmpty()) {
                            for (String tue_task : tue_tasks) {
                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <input class="form-check-input mt-0" type="checkbox">
                        <h1 class="h6 text-truncate w-100 mb-0"><%= tue_task%></h1>
                    </div>
                    <%
                        }
                    } else {

                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <h1 class="h6 text-truncate w-100 mb-0">No Tasks</h1>
                    </div>
                    <%
                        }
                    %>
                </div>

                <!-- Input -->
                <form class="mt-3 row" action="add-task" method="post">
                    <input class="form-control" type="text" name="tue_task" id="tue_task" placeholder="Add Task">
                    <button class="btn btn-secondary" type="submit">Add</button>
                </form>

            </div>
        </div>

        <!-- Wednesday -->

        <div class="col-md-3 text-center">
            <div>
                <div class="row bg-secondary-subtle rounded-5">
                    <h1 class="mb-0 p-3 fw-bold">Wed</h1>
                </div>

                <!-- Tasks -->
                <div class="mt-3 row text-start">
                    <% ArrayList<String> wed_tasks = (ArrayList<String>) request.getSession().getAttribute("wed_tasks");
                        if (wed_tasks != null && !wed_tasks.isEmpty()) {
                            for (String wed_task : wed_tasks) {
                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <input class="form-check-input mt-0" type="checkbox">
                        <h1 class="h6 text-truncate w-100 mb-0"><%= wed_task%></h1>
                    </div>
                    <%
                        }
                    } else {

                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <h1 class="h6 text-truncate w-100 mb-0">No Tasks</h1>
                    </div>
                    <%
                        }
                    %>
                </div>

                <!-- Input -->
                <form class="mt-3 row" action="add-task" method="post">
                    <input class="form-control" type="text" name="wed_task" id="wed_task" placeholder="Add Task">
                    <button class="btn btn-secondary" type="submit">Add</button>
                </form>

            </div>
        </div>

        <!-- Thursday -->
        <div class="col-md-3 text-center">
            <div>
                <div class="row bg-secondary-subtle rounded-5">
                    <h1 class="mb-0 p-3 fw-bold">Thu</h1>
                </div>

                <!-- Tasks -->
                <div class="mt-3 row text-start">
                    <% ArrayList<String> thu_tasks = (ArrayList<String>) request.getSession().getAttribute("thu_tasks");
                        if (thu_tasks != null && !thu_tasks.isEmpty()) {
                            for (String thu_task : thu_tasks) {
                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <input class="form-check-input mt-0" type="checkbox">
                        <h1 class="h6 text-truncate w-100 mb-0"><%= thu_task%></h1>
                    </div>
                    <%
                        }
                    } else {

                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <h1 class="h6 text-truncate w-100 mb-0">No Tasks</h1>
                    </div>
                    <%
                        }
                    %>
                </div>

                <!-- Input -->
                <form class="mt-3 row" action="add-task" method="post">
                    <input class="form-control" type="text" name="thu_task" id="thu_task" placeholder="Add Task">
                    <button class="btn btn-secondary" type="submit">Add</button>
                </form>

            </div>
        </div>

        <!-- Friday -->
        <div class="col-md-3 text-center">
            <div>
                <div class="row bg-secondary-subtle rounded-5">
                    <h1 class="mb-0 p-3 fw-bold">Fri</h1>
                </div>

                <!-- Tasks -->
                <div class="mt-3 row text-start">
                    <% ArrayList<String> fri_tasks = (ArrayList<String>) request.getSession().getAttribute("fri_tasks");
                        if (fri_tasks != null && !fri_tasks.isEmpty()) {
                            for (String fri_task : fri_tasks) {
                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <input class="form-check-input mt-0" type="checkbox">
                        <h1 class="h6 text-truncate w-100 mb-0"><%= fri_task%></h1>
                    </div>
                    <%
                        }
                    } else {

                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <h1 class="h6 text-truncate w-100 mb-0">No Tasks</h1>
                    </div>
                    <%
                        }
                    %>
                </div>

                <!-- Input -->
                <form class="mt-3 row" action="add-task" method="post">
                    <input class="form-control" type="text" name="fri_task" id="fri_task" placeholder="Add Task">
                    <button class="btn btn-secondary" type="submit">Add</button>
                </form>

            </div>
        </div>

        <!-- Saturday -->
        <div class="col-md-3 text-center">
            <div>
                <div class="row bg-secondary-subtle rounded-5">
                    <h1 class="mb-0 p-3 fw-bold">Sat</h1>
                </div>

                <!-- Tasks -->
                <div class="mt-3 row text-start">
                    <% ArrayList<String> sat_tasks = (ArrayList<String>) request.getSession().getAttribute("sat_tasks");
                        if (sat_tasks != null && !sat_tasks.isEmpty()) {
                            for (String sat_task : sat_tasks) {
                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <input class="form-check-input mt-0" type="checkbox">
                        <h1 class="h6 text-truncate w-100 mb-0"><%= sat_task%></h1>
                    </div>
                    <%
                        }
                    } else {

                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <h1 class="h6 text-truncate w-100 mb-0">No Tasks</h1>
                    </div>
                    <%
                        }
                    %>
                </div>

                <!-- Input -->
                <form class="mt-3 row" action="add-task" method="post">
                    <input class="form-control" type="text" name="sat_task" id="sat_task" placeholder="Add Task">
                    <button class="btn btn-secondary" type="submit">Add</button>
                </form>

            </div>
        </div>

        <!-- Sunday -->
        <div class="col-md-3 text-center">
            <div>
                <div class="row bg-secondary-subtle rounded-5">
                    <h1 class="mb-0 p-3 fw-bold">Sun</h1>
                </div>

                <!-- Tasks -->
                <div class="mt-3 row text-start">
                    <% ArrayList<String> sun_tasks = (ArrayList<String>) request.getSession().getAttribute("sun_tasks");
                        if (sun_tasks != null && !sun_tasks.isEmpty()) {
                            for (String sun_task : sun_tasks) {
                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <input class="form-check-input mt-0" type="checkbox">
                        <h1 class="h6 text-truncate w-100 mb-0"><%= sun_task%></h1>
                    </div>
                    <%
                        }
                    } else {

                    %>
                    <div class="col-12 mt-2 d-flex justify-content-between align-items-center gap-2">
                        <h1 class="h6 text-truncate w-100 mb-0">No Tasks</h1>
                    </div>
                    <%
                        }
                    %>
                </div>

                <!-- Input -->
                <form class="mt-3 row" action="add-task" method="post">
                    <input class="form-control" type="text" name="sun_task" id="sun_task" placeholder="Add Task">
                    <button class="btn btn-secondary" type="submit">Add</button>
                </form>

            </div>
        </div>

    </div>
</div>

</body>
</html>
