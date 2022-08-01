using System.ComponentModel.DataAnnotations;

namespace OmerIRMAKWEB.APP.Models
{
    public class Ulasim
    {
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string E_mail { get; set; }
        [Compare("E_mail", ErrorMessage ="E-postalar uyuşmuyor")]
        public string E_mail2 { get; set; }
        public int Telefon { get; set; }
        public string Mesaj { get; set; }
    }
}
