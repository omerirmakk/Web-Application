using Microsoft.AspNetCore.Mvc;
using OmerIRMAKWEB.APP.Models;
using System.Data;
using System.Data.SqlClient;

namespace OmerIRMAKWEB.APP.Controllers
{
    public class UlasimController : Controller
    {
        [HttpGet]
        public IActionResult Gorusme()
        {
            return View();  
        }
        [HttpPost]
        public IActionResult Gorusme(Ulasim ulsm)
        {
            if (ModelState.IsValid)
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-J1LGE9C;Integrated Security=True;Database=OmerIrmakProje");
                SqlCommand cmd = new SqlCommand("Sp_IletisimIslemleri", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@Ad", SqlDbType.NVarChar).Value = ulsm.Ad;
                cmd.Parameters.Add("@Soyad", SqlDbType.NVarChar).Value = ulsm.Soyad;
                cmd.Parameters.Add("@E_mail", SqlDbType.NVarChar).Value = ulsm.E_mail;
                cmd.Parameters.Add("@Telefon", SqlDbType.Int).Value = ulsm.Telefon;
                cmd.Parameters.Add("@Mesaj", SqlDbType.NVarChar).Value = ulsm.Mesaj;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                return View();
            }
            else
            {
                return View();
            }
           
        }
        
    }
}
