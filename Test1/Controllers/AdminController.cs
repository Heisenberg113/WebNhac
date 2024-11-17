using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using System.Web.Mvc;
using Test1.Models;

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
            WebNgheNhacEntities db = new WebNgheNhacEntities();
            List<Singers> t = db.Singers.ToList();
            ViewBag.Allsinger = t;
            return PartialView("Singers");
        }
        public ActionResult Types()
        {
            ViewBag.Layout = "~/Views/Shared/_AdminLayout.cshtml";
            WebNgheNhacEntities db = new WebNgheNhacEntities();
            List<Types> t = db.Types.ToList();
            ViewBag.Alltype = t;
            return PartialView("Types");
        }
        public ActionResult Songs()
        {
            ViewBag.Layout = "~/Views/Shared/_AdminLayout.cshtml";
            WebNgheNhacEntities db = new WebNgheNhacEntities();
            List<Songs> t = db.Songs.ToList();
            ViewBag.Allsong = t;
            return PartialView("Songs");
        }
        public ActionResult Users()
        {
            ViewBag.Layout = "~/Views/Shared/_AdminLayout.cshtml";
            WebNgheNhacEntities db = new WebNgheNhacEntities();
            List<Users> t = db.Users.ToList();
            ViewBag.Alluser = t;
            return PartialView("Users");
        }
    }
}