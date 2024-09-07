using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Examination.Models
{
    public class Question
    {
        public int ID { get; set; }
        public string QuestionDesc { get; set; }
        public int QuestionDegree { get; set; }
        public string QuestionType { get; set; }
        public string CorrectAnswer { get; set; }
        public List<Choice> QuestionChoices { get; set; } = new List<Choice>();
    }
}