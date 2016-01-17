<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Rules.aspx.vb" Inherits="ServerSideAssignment.Rules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <!--bootstrap-->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!---end bootstrap-->

    <script runat="server">

        Sub logout(sender As Object, e As EventArgs)
            Session.Abandon()
            Response.Redirect("Home.aspx")
        End Sub
    </script>

    <title>Rules and Regulations - Exam Registration System</title>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Exam Registration System</a>
            </div>
            <div>
                <ul class="nav navbar-nav">
                    <li><a href="Profile.aspx">Profile</a></li>
                    <li><a href="MyExams.aspx">My Exams</a></li>
                    <li><a href="studentExamRegistration.aspx">Exam Registration</a></li> 
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="divider-vertical"></li>
                    <li class="active"><a href="Rules.aspx">Rules & Regulations</a></li>
                    <li class="divider-vertical"></li>
                    <li><a id="logout_link" runat="server" onServerClick="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
        <div class="col-md-2"></div>"
    <div class="col-md-8">
        <div class="" id="parent-fieldname-text">
            
            <ol></ol>
            <strong>Rules for the Conduct of Examinations</strong>
            <ol><li>No person will be allowed in an examination room during an examination except the candidates concerned and those supervising the examination.</li><li>Candidates must appear at the examination room at least twenty minutes before the commencement of the examination.</li><li>Candidates shall bring their photo identification (signed Photo ID) and place it in a conspicuous place on their desks. Photo identification may include any one of the following, as long as it contains a photo and a signature: current University of Toronto Photo ID (T-Card) OR up-to-date Passport (any country) OR current Driver’s License (any country) OR current Canadian health card (any province or territory).</li><li>Candidates shall place their watch or timepiece on their desks.</li><li>All coats and jackets should be placed on the back of each candidate’s chair. All notes and books, pencil cases, turned off cell phones, laptops and other unauthorized aids as well as purses should be stored inside candidate’s knapsack or large bag, which should then be closed securely and placed under candidate’s chair. Candidates are NOT allowed to have a pencil case on their desk and any pencil cases found on desks will be searched. All watches and timepieces on desks will be checked. Candidates are not allowed to touch their knapsack or bag or the contents until the exam is over. Candidates are not allowed to reach into the pockets or any part of their coat or jacket until the exam is over.<br /></li><li>The Chief Presiding Officer has authority to assign seats to candidates.</li><li>Candidates shall not communicate with one another in any manner whatsoever during the&nbsp; examination. Candidates may not leave the examination room unescorted for any reason, and this includes using the washroom.</li><li>No materials or electronic devices shall be brought into the room or used at an examination except those authorized by the Chief Presiding Officer or Examiner.&nbsp; Unauthorized materials include, but are not limited to: books, class notes, or aid sheets.&nbsp; Unauthorized electronic devices include, but are not limited to: cellular telephones, laptop computers, calculators, MP3 players (such as an Ipod), Personal Digital Assistants (“PDA” such as a Palm Pilot or Blackberry), pagers, electronic dictionaries, Compact Disc Players, Mini Disc Players,&nbsp; Smart Watches and Smart Glasses.</li><li>Candidates who bring any unauthorized materials or electronic devices into an examination room or who assist or obtain assistance from other candidates or from any unauthorized source are liable to penalties under the Code of Behaviour on Academic Matters, including the loss of academic credit and expulsion.</li><li>In general, candidates will not be permitted to enter an examination room later than fifteen minutes after the commencement of the examination, nor to leave except under supervision until at least half an hour after the examination has commenced.</li><li>Candidates shall remain seated at their desks during the final ten minutes of each examination.</li><li>At the conclusion of an examination, all writing shall cease.&nbsp; The Chief Presiding Officer may seize the papers of candidates who fail to observe this requirement, and a penalty may be imposed.</li><li>Examination books and other material issued for the examination shall not be removed from the examination room except by authority of the Chief Presiding Officer.<br /></li></ol>
            <p><strong>THE UNIVERSITY IS NOT RESPONSIBLE FOR PERSONAL PROPERTY LEFT IN EXAMINATION ROOMS</strong></p>

            
        </div>
    </div>
        <div class="col-md-2"></div>
    </form>
</body>
</html>
