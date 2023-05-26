using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace ManagementSystemForCourses.Common
{
    public class MD5Generator
    {
        public static string GetMD5String(string str)
        {
            using (MD5 md5 = MD5.Create())
            {
                byte[] pws = md5.ComputeHash(Encoding.UTF8.GetBytes(str));
                StringBuilder sb = new StringBuilder();
                foreach (byte item in pws)
                {
                    sb.Append(item.ToString("x2"));
                }
                return sb.ToString();
            }
        }
    }
}
