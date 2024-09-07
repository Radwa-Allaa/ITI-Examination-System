<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamForm.aspx.cs" Inherits="Examination.ExamForm" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Examination System</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
  <style>
      .Customheader{
           font-family: Arial, sans-serif;
           background-color: transparent;
           color:#901b20;
      }
          body {
            background: url('https://scontent.fcai19-12.fna.fbcdn.net/v/t39.30808-6/448888915_2267021360305031_400999092719614060_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGrppLAaXG5CJRUmFr5vayGKNTYH7upFKAo1Ngfu6kUoHcEfrktBOSF4jYLe1U-YqjpulU0L9nVWIAEUD_g-FOY&_nc_ohc=mAghdXdYDCIQ7kNvgHv2yLA&_nc_ht=scontent.fcai19-12.fna&oh=00_AYB-XJJ5_RBkOGD0pn4EmAUzIy7kSJjR7uEg0_j2ysQSQw&oe=66D23E0D') no-repeat center center fixed;
            background-size: cover;
            color: #343a40; /* Dark gray for better contrast */
            display: flex;
            flex-direction: column;
        }
       
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
     h1{
         background-color: maroon;
        color: white;
     } 
   
        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-group input[disabled] {
            background-color: #f9f9f9;
        }
        .form-group .error {
            color: red;
            font-size: 0.875em;
        }
        .form-group .info {
            color: #555;
        }
     
      
        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            color: #ffffff;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }
        .btn:disabled {
            background-color: #c0c0c0;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .hidden {
            display: none;
        }
            table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 16px;
            font-family: Arial, sans-serif;
        }

        th, td {
            padding: 12px;
            text-align: left;
            /*border-bottom: 1px solid #ddd;*/
          display: -webkit-inline-box;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e9e9e9;
        }

        .table-striped {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .table-striped td  {
            
            padding: 12px;
            /*border: 1px solid #ddd;*/
        }

        .table-striped th {
            background-color: #f4f4f4;
            color: #333;
        }
     .customlbl{
             color: maroon;
    font-weight: bold;
    font-size: larger;
    font-family: math;
     }
     .customlblT{
             font-size: larger;
    font-family: cursive;
     }
    </style>

</head>

<body>
    <form id="form1" runat="server"  class="form-group">
        <div class="Customheader">
            <asp:Image ID="Image1" runat="server" src="https://iti.gov.eg/assets/images/ColoredLogo.svg" />
            <h1 class="text-center">Examination System</h1>
        </div>
        <div  class="container">
        <div>

        <asp:PlaceHolder ID="GenerationExam" runat="server">
         <div>
        <asp:Label ID="Label5" runat="server" Text="Insert Your ID "></asp:Label>
        <asp:TextBox ID="txt_stdID" runat="server"></asp:TextBox>
           
        <asp:TextBox ID="txtError" class="text-bg-danger" runat="server" Visible="false"></asp:TextBox>
             </div>
            <div>
        <asp:Label ID="Label1" runat="server" Text="Course : "></asp:Label>
        <asp:DropDownList ID="ddl_Courses" runat="server" OnTextChanged="ddl_Courses_TextChanged" AutoPostBack="true"></asp:DropDownList>
                </div>
            <div>
        <asp:Label ID="Label2" runat="server" Text="Exam Duration : "></asp:Label>
        <asp:TextBox ID="txt_ExamDuration"  runat="server" ReadOnly="true"></asp:TextBox>
                </div>
            <div>
        <asp:Label ID="Label3" runat="server" Text="No. of T/F Question"></asp:Label>
        <asp:DropDownList ID="ddl_NumTF" runat="server"   OnSelectedIndexChanged="ddl_NumTF_TextChanged" AutoPostBack="True"></asp:DropDownList>
                </div>
            <div>
        <asp:Label ID="Label4" runat="server" Text="No. of MCQ Question"></asp:Label>
        <asp:TextBox ID="txtMCQNum" runat="server" Enabled="false"></asp:TextBox>
                </div>
        <asp:Button runat="server" Text="Generate Exam" OnClick="GenerateExam"  />
            </asp:PlaceHolder>
            </div>
        <div>
        <asp:PlaceHolder ID="ResultPlaceHolder" runat="server" Visible="false">
            <Table id="tbl" runat="server" class="table-striped">
                 <tr>
          <td runat="server">  <asp:Label ID="lbl_Name" class="customlbl" runat="server" Text="Student Name : "></asp:Label></td>
          <td runat="server">  <asp:Label ID="lbl_NameT" CssClass="customlblT text-center" runat="server" ></asp:Label></td>
                </tr>
                  <tr>
          <td runat="server">  <asp:Label ID="lbl_Course" class="customlbl" runat="server" Text="Course Name : "></asp:Label></td>
          <td runat="server">  <asp:Label ID="lbl_CourseT" CssClass="customlblT text-center" runat="server" ></asp:Label></td>
                </tr>
       <tr>
          <td runat="server">  <asp:Label ID="lbl_Exam" class="customlbl" runat="server" Text="Exam Number : "></asp:Label></td>
          <td runat="server">  <asp:Label ID="lbl_ExamNum" CssClass="customlblT text-center" runat="server" ></asp:Label></td>
                </tr>
                  <tr>
          <td runat="server">  <asp:Label ID="lbl_total" class="customlbl" runat="server" Text="Total Score : "></asp:Label></td>
          <td runat="server">  <asp:Label ID="lbl_totalT" CssClass="customlblT text-center"  runat="server" ></asp:Label></td>
                </tr>
            <tr>
          <td runat="server">  <asp:Label ID="lbl_grad" class="customlbl" runat="server" Text="Gained Score : "></asp:Label></td>
          <td runat="server">  <asp:Label ID="lbl_gradT" CssClass="customlblT text-center" runat="server" ></asp:Label></td>
                </tr>
           
           
            <tr>
           <td> <asp:Label ID="lbl_Prec" runat="server" class="customlbl" Text="Exam Precentage : "></asp:Label></td>
            <td> <asp:Label ID="lbl_PrecT" runat="server" CssClass="customlblT text-center"></asp:Label></td>
                </tr>
            <tr>
           <td> <asp:Label ID="lbl_status" runat="server" class="customlbl" Text="Final Result : "></asp:Label></td>
            <td><asp:Label ID="lbl_statusT" runat="server" CssClass="customlblT text-center"></asp:Label></td>
                </tr>
           
                </Table>
             </asp:PlaceHolder>
             <asp:TextBox id="txtNoAnswer" runat="server" disabled="disabled" visible="false" class="text-bg-danger text-center" text="you didn't answer any questions"></asp:TextBox>
            <asp:Button ID="btnTryAgain" runat="server" Visible="false" Text="Try Again" OnClick="btnTryAgain_Click" />
            </div>
              
 <div id="questionsContainer">
            
 <asp:PlaceHolder ID="QuestionsPlaceHolder" Visible="false" runat="server">

   <asp:Panel runat="server">  
           <asp:Label ID="lbl1" runat="server" visible="false"></asp:Label>
           <asp:RadioButtonList ID="Rbl1" visible="false" CssClass="form-inline radioButtonList "  RepeatDirection="Horizontal"  runat="server"></asp:RadioButtonList>
                       
                  
           </asp:Panel>
                  <asp:Panel runat="server"> 
               <asp:Label ID="lbl2" runat="server" visible="false"></asp:Label>
               <asp:RadioButtonList ID="Rbl2" visible="false" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                      </asp:Panel>
               
                <asp:Panel runat="server">
              <asp:Label ID="lbl3" runat="server" visible="false"></asp:Label>
            <asp:RadioButtonList ID="Rbl3" visible="false" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                    </asp:Panel>
             <asp:Panel runat="server">

               <asp:Label ID="lbl4" runat="server" visible="false" ></asp:Label>
       <asp:RadioButtonList ID="Rbl4" visible="false" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                </asp:Panel>
     <asp:Panel runat="server">
            <asp:Label ID="lbl5" runat="server" visible="false"></asp:Label>
               <asp:RadioButtonList ID="Rbl5" visible="false" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
     </asp:Panel>
            <asp:Panel runat="server">
              <asp:Label ID="lbl6" runat="server" visible="false"></asp:Label>
              <asp:RadioButtonList ID="Rbl6" visible="false" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                </asp:Panel>
              <asp:Panel runat="server">
           <asp:Label ID="lbl7" runat="server" visible="false" ></asp:Label>
              <asp:RadioButtonList ID="Rbl7" visible="false" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                    </asp:Panel>
                 <asp:Panel runat="server">
               <asp:Label ID="lbl8" runat="server" visible="false"></asp:Label>
             <asp:RadioButtonList ID="Rbl8" visible="false" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                     </asp:Panel>
                 <asp:Panel runat="server">
             <asp:Label ID="lbl9" runat="server" visible="false" ></asp:Label>
            <asp:RadioButtonList ID="Rbl9" CssClass="rbl" RepeatDirection="Horizontal" visible="false" runat="server"></asp:RadioButtonList>
             </asp:Panel>
                <asp:Panel runat="server">
              <asp:Label ID="lbl10" runat="server" visible="false"></asp:Label>
             <asp:RadioButtonList ID="Rbl10" visible="false" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                   </asp:Panel>
                
            </asp:PlaceHolder>
        </div>
        <div>
            <!-- Placeholder for the submit button -->
            <asp:Button ID="SubmitButton" runat="server" Text="Submit Answers" Visible="false" OnClick="SubmitButton_Click" />
        </div>
        </div>  
    </form>
</body>
</html>
