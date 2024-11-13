using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using System.Web.Mvc;

namespace Test1.Controllers.Admin
{
    public class AdminController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Layout = "~/Views/Shared/_AdminLayout.cshtml";
            return View();
        }
        public ActionResult Singers()
        {
            ViewBag.Layout = "~/Views/Shared/_AdminLayout.cshtml";
            return View();
        }
        public ActionResult Types()
        {
            ViewBag.Layout = "~/Views/Shared/_AdminLayout.cshtml";
            return View();
        }
        public ActionResult Songs()
        {
            ViewBag.Layout = "~/Views/Shared/_AdminLayout.cshtml";
            return View();
        }
        public ActionResult Users()
        {
            ViewBag.Layout = "~/Views/Shared/_AdminLayout.cshtml";
            return View();
        }
    }
}