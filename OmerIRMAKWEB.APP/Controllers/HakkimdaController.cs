using Microsoft.AspNetCore.Mvc;
using OmerIRMAKWEB.APP.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace OmerIRMAKWEB.APP.Controllers
{
    public class HakkimdaController : Controller
    {
        public IActionResult HakSayfasi()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-J1LGE9C;Integrated Security=True;Database=OmerIrmakProje");
            SqlCommand cmd = new SqlCommand("Sp_OzgecmisIslemleri", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            List<Hakkimda> lst = new List<Hakkimda>();
            foreach (DataRow dr in dt.Rows)
            {
                lst.Add(new Hakkimda() { Ozgecmis = dr["Ozgecmis"].ToString(), VideoLinki = dr["VideoLinki"].ToString()});
            }
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return View(lst);
            
        }
    }
}
