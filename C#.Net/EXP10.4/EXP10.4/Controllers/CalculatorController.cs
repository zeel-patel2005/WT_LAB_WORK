using EXP10._4.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EXP10._4.Controllers
{
    public class CalculatorController : Controller
    {
        // GET: Calculator
        // GET: Calculator
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(CalculatorModel model)
        {
            switch (model.Operation)
            {
                case "Add":
                    model.Result = (double)(model.Number1 + model.Number2);
                    break;
                case "Subtract":
                    model.Result = (double)(model.Number1 - model.Number2);
                    break;
                case "Multiply":
                    model.Result = (double)(model.Number1 * model.Number2);
                    break;
                case "Divide":
                    if (model.Number2 != 0)
                        model.Result = (double)(model.Number1 / model.Number2);
                    else
                        ModelState.AddModelError("", "Division by zero is not allowed.");
                    break;
                default:
                    ModelState.AddModelError("", "Invalid operation selected.");
                    break;
            }

            return View(model);
        }
    }
}