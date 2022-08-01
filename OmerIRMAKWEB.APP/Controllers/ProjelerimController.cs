using Microsoft.AspNetCore.Mvc;
using OmerIRMAKWEB.APP.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace OmerIRMAKWEB.APP.Controllers
{
    public class ProjelerimController : Controller
    {
        public IActionResult Proje()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-J1LGE9C;Integrated Security=True;Database=OmerIrmakProje");
            SqlCommand cmd = new SqlCommand("Sp_Proje2Islemleri", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            List<Proje> lst = new List<Proje>();
            foreach (DataRow dr in dt.Rows)
            {
                lst.Add(new Proje() { ProjeID = Convert.ToInt32(dr["ProjeID"]), ProjeAdi = dr["ProjeAdi"].ToString(), ProjeAciklamasi = dr["ProjeAciklamasi"].ToString(), ProjeYili = Convert.ToInt32(dr["ProjeYili"]) });
            }
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return View(lst);
        }
    }
}
