//using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace B__Tree
{
    public partial class Form2 : Form
    {
        public String judul;
        //public MySqlConnection conn;

        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            
            /*MySqlDataAdapter adp = new MySqlDataAdapter("select title, isi from news where Nomor = '" + judul + "'", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            label1.Text = dt.Rows[0].ItemArray[0].ToString();
            richTextBox1.Text = dt.Rows[0].ItemArray[1].ToString();*/
        }
    }
}
