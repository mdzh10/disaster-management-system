using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;
using DisasterAssistance.Models;

namespace DisasterAssistance.Controllers
{
    public class DonationController : Controller
    {
        private readonly string _conString = ConfigurationManager.ConnectionStrings["DisasterDB"].ConnectionString;
        // GET: Donation
        public ActionResult Index()
        {
            using (var conn = new SqlConnection(_conString))
            {
                var results = new List<DonationModel>();
                const string query = "SELECT * FROM [Donations]";
                var command = new SqlCommand(query, conn);
                conn.Open();
                var reader = command.ExecuteReader();
                while (reader.Read())
                {
                    results.Add(
                        new DonationModel
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

        public ActionResult DonationForm()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddDonation(DonationModel donation)
        {
            using (var conn = new SqlConnection(_conString))
            using (var cmd = conn.CreateCommand())
            {
                conn.Open();
                cmd.CommandText = "AddDonation";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@itemname", donation.ItemName);
                cmd.Parameters.AddWithValue("@category", donation.Category);
                cmd.Parameters.AddWithValue("@quantity", donation.Qty);
                cmd.Parameters.AddWithValue("@userid", Session["userId"].ToString());
                cmd.ExecuteNonQuery();
            }
            return RedirectToAction("Index");
        }
    }
}