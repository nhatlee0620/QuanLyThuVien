using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PhanMemQLTV
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new frmGiaoDienChinh());
            Application.Run(new frmDangNhap());
            //Application.Run(new frmQLMuonTra());
            //Application.Run(new frmBaoCaoThongKe());
            //Application.Run(new frmQLDocGia());
        }
    }
}
