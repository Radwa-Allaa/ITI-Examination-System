using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using DB = Microsoft.ApplicationBlocks.Data.SqlHelper;
using Examination.Models;

namespace Examination
{
    
    public partial class ExamForm : System.Web.UI.Page
    {
        public static Exam NewExam;
        private List<string> Answers=new List<string>();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
               

            }
        }
        private void LoadData()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ExamConnectionString"].ToString()))
            {
                string cmd = "select distinct cs.course_ID ,cr_name from Course cs join Question q on cs.course_ID = q.Course_ID";
                DataSet ds = DB.ExecuteDataset(con, CommandType.Text, cmd);
                List<Course> Courses = new List<Course>();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        Course course = new Course();
                        course.ID = int.Parse(ds.Tables[0].Rows[i]["course_ID"].ToString());
                        course.Title = ds.Tables[0].Rows[i]["cr_name"].ToString();
                        Courses.Add(course);
                    }
                    ddl_Courses.DataSource = Courses;
                    ddl_Courses.DataValueField = "ID"; //example choose what is needed
                    ddl_Courses.DataTextField = "Title"; //example choose what is needed
                    ddl_Courses.DataBind();

                }

            }
            ddl_NumTF.DataSource = new List<int>{1,2,3,4,5,6,7,8,9,10};
            ddl_NumTF.DataBind();
        }
        protected void GenerateExam(object sender, EventArgs e)
        {
           
            NewExam = new Exam();
            List<int> StudentIDs = new List<int>();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ExamConnectionString"].ToString()))
            {
                string Stdcmd = "select distinct St_ID from Student";
                DataSet Stdds = DB.ExecuteDataset(con, CommandType.Text, Stdcmd);
                if (Stdds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < Stdds.Tables[0].Rows.Count; i++)
                    {
                        StudentIDs.Add(int.Parse(Stdds.Tables[0].Rows[i]["St_ID"].ToString()));
                    }
                }
                if (StudentIDs.Count > 0 && StudentIDs.Contains(int.Parse(txt_stdID.Text)))
                {
                    txtError.Visible = false;
                    GenerationExam.Visible = false;
                    string cmd = "select max(ex_ID) as maxExamID from Exam";
                    DataSet ds = DB.ExecuteDataset(con, CommandType.Text, cmd);
                    int MaxExamID = 1;
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            MaxExamID = int.Parse(ds.Tables[0].Rows[i]["maxExamID"].ToString());

                        }
                    }
                    NewExam = new Exam();

                    NewExam.ID = MaxExamID + 1;
                    NewExam.Duration = string.IsNullOrEmpty(txt_ExamDuration.Text)? 60 : int.Parse(txt_ExamDuration.Text);
                    int numMcq = string.IsNullOrEmpty(txtMCQNum.Text) ? 9 : int.Parse(txtMCQNum.Text);
                    List<Question> Qslist = new List<Question>();
                    DataSet ds2 = DB.ExecuteDataset(con, "Exam_Generation", MaxExamID + 1, int.Parse(ddl_Courses.SelectedValue), NewExam.Duration, int.Parse(ddl_NumTF.SelectedValue), numMcq);
                    if (ds2.Tables[0].Rows.Count > 0)
                    {

                        for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                        {

                            Question question = new Question();
                            question.QuestionDegree = int.Parse(ds2.Tables[0].Rows[i]["Qs_degree"].ToString());
                            question.ID = int.Parse(ds2.Tables[0].Rows[i]["Qs_ID"].ToString());
                            question.QuestionDesc = ds2.Tables[0].Rows[i]["Qs_desc"].ToString();
                            question.QuestionType = ds2.Tables[0].Rows[i]["Qs_type"].ToString();
                            question.CorrectAnswer = ds2.Tables[0].Rows[i]["correct_answer"].ToString();
                            Qslist.Add(question);
                        }
                        for (int y = 0; y < Qslist.Count; y++)
                        {
                            string cmd2 = "select * from Choice where QS_ID = " + Qslist[y].ID.ToString();
                            DataSet ds3 = DB.ExecuteDataset(con, CommandType.Text, cmd2);
                            List<Choice> choices = new List<Choice>();
                            if (ds3.Tables[0].Rows.Count > 0)
                            {
                                for (int i = 0; i < ds3.Tables[0].Rows.Count; i++)
                                {
                                    Choice choice = new Choice();
                                    choice.ID = int.Parse(ds3.Tables[0].Rows[i]["choice_ID"].ToString());
                                    choice.Title = ds3.Tables[0].Rows[i]["choice_Desc"].ToString();
                                    choices.Add(choice);
                                }
                            }
                            Qslist[y].QuestionChoices = choices;
                        }
                        NewExam.ExamQuestions = Qslist;

                        string[] rblIds = { "Rbl1", "Rbl2", "Rbl3", "Rbl4", "Rbl5", "Rbl6", "Rbl7", "Rbl8", "Rbl9", "Rbl10" };
                        string[] labelIds = { "lbl1", "lbl2", "lbl3", "lbl4", "lbl5", "lbl6", "lbl7", "lbl8", "lbl9", "lbl10" };

                        int index = 0;
                        foreach (var q in NewExam.ExamQuestions)
                        {
                            if (index >= labelIds.Length || index >= rblIds.Length) break;

                            Label lbl = (Label)QuestionsPlaceHolder.FindControl(labelIds[index]);
                            RadioButtonList rbl = (RadioButtonList)QuestionsPlaceHolder.FindControl(rblIds[index]);


                            if (lbl != null)
                            {
                                lbl.Text = (index+1)+" - "+q.QuestionDesc; // Set the question description
                                lbl.Visible = true; // Make sure the Label is visible
                            }

                            if (rbl != null)
                            {
                                // Populate the RadioButtonList
                                rbl.Items.Clear(); // Clear existing items
                                foreach (var choice in q.QuestionChoices)
                                {
                                    rbl.Items.Add(choice.Title);

                                }
                                rbl.DataBind();
                                rbl.Visible = true; // Make sure the RadioButtonList is visible
                            }
                            index++;

                        }


                    }
                    QuestionsPlaceHolder.Visible = true;
                    SubmitButton.Visible = true;
                }
                else
                {
                    txtError.Text="your ID not exist please enter correct ID";
                    txtError.Visible = true;
                }

                
            }
        }
        private void GenerateDynamicControls()
        {
            int x = 1;
            foreach (var q in NewExam.ExamQuestions)
            {
                // Create a new RadioButtonList control
                RadioButtonList rbl = new RadioButtonList();
                rbl.ID = "Rb" + x; // Unique ID for each RadioButtonList

                foreach (var choice in q.QuestionChoices)
                {
                    rbl.Items.Add(choice.Title);
                }

                rbl.DataBind();

                // Add question description as a label
                Label questionLabel = new Label();
                questionLabel.Text = x + " - " + q.QuestionDesc;

                // Create a container for the question and RadioButtonList
                Panel panel = new Panel();
                panel.Controls.Add(questionLabel);
                panel.Controls.Add(rbl);

                // Add the panel to the placeholder
                QuestionsPlaceHolder.Controls.Add(panel);
                x++;
                if (x == 11)
                {
                    Button Btn = new Button();
                    Btn.Text = "Submit Answers";
                    Btn.ID = "BtnSubmit";
                    Btn.Click += new EventHandler(DynamicButton_Click);
                    QuestionsPlaceHolder.Controls.Add(Btn);
                }
            }
            QuestionsPlaceHolder.EnableViewState = true;
        }
       
        protected void ddl_NumTF_TextChanged(object sender, EventArgs e)
        {
            int NumTF = int.Parse(ddl_NumTF.SelectedItem.Value);
            txtMCQNum.Text = (10 - NumTF).ToString();
           
        }

        protected void DynamicButton_Click(object sender, EventArgs e)
        {
            // Button click logic here
            Response.Write("Dynamic button clicked!");
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Answers.Clear();
            foreach (Control control in QuestionsPlaceHolder.Controls)
            {
                if (control is Panel panel)
                {
                    foreach (Control child in panel.Controls)
                    {
                        if (child is RadioButtonList rbl)
                        {
                            Answers.Add(rbl.SelectedValue);
                            
                        }
                    }
                }
            }
            QuestionsPlaceHolder.Visible = false;
            SubmitButton.Visible = false;
            SubmitAnswers();
        }

        private void SubmitAnswers()
        {
            if (Answers != null)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ExamConnectionString"].ToString()))
                {
                    int x = 0;
                    con.Open();
                    int status = 0;
                    foreach (var q in NewExam.ExamQuestions)
                    {
                      
                        using (SqlCommand cmd = new SqlCommand("exam_answer", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@st_ID", int.Parse(txt_stdID.Text));
                            cmd.Parameters.AddWithValue("@exam_ID", NewExam.ID);
                            cmd.Parameters.AddWithValue("@q_ID", q.ID);
                            cmd.Parameters.AddWithValue("@answer", Answers[x]);
                          status += cmd.ExecuteNonQuery();
                        }
                        
                       
                        x++;
                    }

                    if ((status <= 0 && status > -10)||status > 0)
                    {
                        using (SqlCommand cmd = new SqlCommand("Exam_Correction", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@St_ID", int.Parse(txt_stdID.Text));
                            cmd.Parameters.AddWithValue("@Exam_ID", NewExam.ID);
                            cmd.ExecuteNonQuery();
                        }
                        GetGrade();
                    }
                    else
                    {
                        txtNoAnswer.Visible = true;
                        btnTryAgain.Visible = true;
                    }
                    con.Close();
                }
                
                   
                
            }
        }
        private void GetGrade()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ExamConnectionString"].ToString()))
            {
                string cmd = "select St_name, st_Grade,exam_percentage,St_status from student_exam  join Student  on St_ID=Std_ID  where Std_ID = " + txt_stdID.Text + " and ex_ID = " + NewExam.ID;
                DataSet ds = DB.ExecuteDataset(con, CommandType.Text, cmd);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        lbl_NameT.Text = ds.Tables[0].Rows[i]["St_name"].ToString();
                        lbl_CourseT.Text = ddl_Courses.SelectedItem.Text;
                        lbl_gradT.Text= ds.Tables[0].Rows[i]["st_Grade"].ToString();
                        lbl_PrecT.Text = ds.Tables[0].Rows[i]["exam_percentage"].ToString()+" %";
                        lbl_statusT.Text = ds.Tables[0].Rows[i]["St_status"].ToString();
                        lbl_ExamNum.Text = NewExam.ID.ToString();
                        int numMcq = string.IsNullOrEmpty(txtMCQNum.Text) ? 9 : int.Parse(txtMCQNum.Text);
                        int numTF = int.Parse(ddl_NumTF.SelectedValue);
                        lbl_totalT.Text = ((numMcq * 2) + numTF).ToString();
                        if(lbl_statusT.Text == "Failed")
                        {
                            lbl_statusT.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            lbl_statusT.ForeColor = System.Drawing.Color.Green;
                        }
                        ResultPlaceHolder.Visible = true;

                    }
                }

            }
        }

        protected void btnTryAgain_Click(object sender, EventArgs e)
        {
            btnTryAgain.Visible = false;
            txtNoAnswer.Visible = false;
            GenerationExam.Visible = true;
        }

        protected void ddl_Courses_TextChanged(object sender, EventArgs e)
        {

            int selected_course =ddl_Courses.SelectedIndex;
            switch(selected_course)
             {
                case 0:
                    txt_ExamDuration.Text = "60" ;
                    break;
                case 1:
                    txt_ExamDuration.Text = "120";
                    break;
                case 2:
                    txt_ExamDuration.Text = "90";
                    break;
                case 3:
                    txt_ExamDuration.Text = "60";
                    break;
                case 4:
                    txt_ExamDuration.Text = "45";
                    break;
                default:
                    txt_ExamDuration.Text = "90";
                    break;
            }

            
          
        }
    }
}