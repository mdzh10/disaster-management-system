using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;
using DisasterAssistance.Models;

namespace DisasterAssistance.Controllers
{
    public class RequestController : Controller
    {
        private readonly string _conString = ConfigurationManager.ConnectionStrings["DisasterDB"].ConnectionString;
        // GET: Donation
        public ActionResult Index()
        {
            using (var conn = new SqlConnection(_conString))
            {
                var results = new List<RequestModel>();
                var query = "SELECT * FROM [Requests]";
                var command = new SqlCommand(query, conn);
                conn.Open();
                var reader = command.ExecuteReader();
                while (reader.Read())
                {
                    results.Add(
                        new RequestModel
                        {
                            ItemName = reader["ItemName"].ToString(),
                            Category = reader["Category"].ToString(),
                            Qty = Convert.ToInt32(reader["Quantity"]),
                            Status = reader["Status"].ToString()
                        }
                    );
                }

                return View(results);
            }
        }

        public ActionResult RequestForm()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddRequest(RequestModel request)
        {
            using (var conn = new SqlConnection(_conString))
            using (var cmd = conn.CreateCommand())
            {
                conn.Open();
                cmd.CommandText = "AddRequest";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@itemname", request.ItemName);
                cmd.Parameters.AddWithValue("@category", request.Category);
                cmd.Parameters.AddWithValue("@quantity", request.Qty);
                cmd.Parameters.AddWithValue("@userid", Session["userId"]);
                cmd.ExecuteNonQuery();
            }
            return RedirectToAction("Index");
        }
    }
}