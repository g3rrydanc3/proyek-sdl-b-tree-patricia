using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
//using MySql.Data.MySqlClient;

namespace B__Tree
{
    public partial class Form1 : Form
    {
        string connectionString;
        //public MySqlConnection conn;

        public Form1()
        {
            InitializeComponent();
        }

        class MULTINODE
        {
            public int n, size;
            public int[] keys;
            public MULTINODE[] children;
            public MULTINODE parent;
            public MULTINODE prev, next; //double-linked list for leaf
            public MULTINODE(int m)
            {
                this.size = m - 1;
                this.n = 0;
                this.keys = new int[this.size + 1]; //may overflow 1 key
                //this.children = new int[this.size + 2];
                //this.children[0] = null;
                this.prev = null;
                this.next = null;
                this.parent = null;
            }
        }



        private void Form1_Load(object sender, EventArgs e)
        {
            connectionString = "server=localhost;userid=root;password=;database=sdl";
            /*conn = new MySqlConnection(connectionString);
            try
            {
                conn.Open();
                //MessageBox.Show(conn.ServerVersion);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                throw;
            }*/
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void listBox1_DoubleClick(object sender, EventArgs e)
        {

        }
    }
}
