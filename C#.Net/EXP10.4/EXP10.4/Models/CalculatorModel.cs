using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EXP10._4.Models
{
    public class CalculatorModel
    {
        [Required(ErrorMessage = "Number1 is required")]
        public double? Number1 { get; set; }

        [Required(ErrorMessage = "Number2 is required")]
        public double? Number2 { get; set; }

        [Required(ErrorMessage = "Please select an operation")]
        public string Operation { get; set; }

        public double Result { get; set; }
    }
}