using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Examination.Models
{
    public class Exam
    {
        public int ID { get; set; }
        public int Duration { get; set; }

        public TimeSpan StartTime { get; set; }
        public List<Question> ExamQuestions { get; set; } = new List<Question>();
    }
}