using System;
using System.Collections.Generic;
using System.Linq;

namespace Gradebook
{
    public class Book
    {
        private List<double> grades;
        private double average;
        private double highGrade = double.MinValue;
        private double lowGrade = double.MaxValue;
        public string Name;

        public Book(string name)
        {
            grades = new List<double>();
            Name = name;
        }

        public void AddGrade(double grade)
        {
            grades.Add(grade);
        }

        public Statistics GetStatistics()
        {
            Statistics result = new Statistics();
            CalculateStatistics();

            // grades.Min() Get min value in the list
            // grades.Max() Get max Value in the list
            // grades.Average() Get Average if the list

            result.Average = average;
            result.High = highGrade;
            result.Low = lowGrade;

            return result;
        }

        private void CalculateStatistics()
        {
            double total = 0.0;
            foreach (double grade in grades)
            {
                SetLowGrade(grade);
                SetHighGrade(grade);
                total += grade;
            }

            average = total / grades.Count;
        }

        private void SetLowGrade(double grade)
        {
            lowGrade = Math.Min(grade, lowGrade);
        }

        private void SetHighGrade(double grade)
        {
            highGrade = Math.Max(grade, highGrade);
        }
    }
}
