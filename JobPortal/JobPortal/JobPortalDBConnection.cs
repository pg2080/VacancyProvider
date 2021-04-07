using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;


namespace JobPortal
{
    public class JobPortalDBConnection
    {
        public static  string email="0";
        public static Boolean Isreg = false;
        public static SqlConnection getDatabaseConnection()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dhruvi vaghela\Desktop\final job portal\JobPortal\JobPortal\App_Data\JPortal.mdf;Integrated Security=True");
            return con;
        }
        public static string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }
    

    }
}