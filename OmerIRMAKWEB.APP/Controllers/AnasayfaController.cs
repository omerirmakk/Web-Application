using Microsoft.AspNetCore.Mvc;
using OmerIRMAKWEB.APP.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace OmerIRMAKWEB.APP.Controllers
{
    public class AnasayfaController : Controller
    {
        public IActionResult Baslangic()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-J1LGE9C;Integrated Security=True;Database=OmerIrmakProje");
            SqlCommand cmd = new SqlCommand("Sp_AnasayfaIslemleri", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            List<Baslangic> lst = new List<Baslangic>();
            foreach (DataRow dr in dt.Rows)
            {
                lst.Add(new Baslangic() { KarsilamaMetni = dr["KarsilamaMetni"].ToString(), KarsilamaResmi = dr["KarsilamaResmi"].ToString(), AktifMi = Convert.ToBoolean(dr["AktifMi"]), EklenmeTarihi = Convert.ToDateTime(dr["EklenmeTarihi"]) });
            }
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return View(lst);
        }
    }
}
