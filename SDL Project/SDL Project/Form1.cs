using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace SDL_Project
{
    public partial class Form1 : Form
    {
        string connectionString;
        public MySqlConnection conn;
        public String judul;
        List<String> coba = new List<string>();
        TSTNODE asdf = new TSTNODE("a", null);

        public Form1()
        {
            InitializeComponent();
        }

        private void read()
        {
            MySqlDataAdapter adp = new MySqlDataAdapter("select nomor, isi from news", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            
            for (int i = 0; i < dt.Rows.Count; i++) //LOOP BERITA
            {
                String tmp = dt.Rows[i].ItemArray[1].ToString().Replace(".", " ").Replace(",", " ").Replace(";", " ").Replace(";", " ").Replace("!", " ").Replace("?", " ").Replace(":", " ").Replace("/", " ").Replace("-", " ").Replace("_", " ").Replace("+", " ").Replace("|", " ").Replace("<", " ").Replace(">", " ").Replace("=", " ").Replace("@", " ").Replace("#", " ").Replace("$", " ").Replace("%", " ").Replace("^", " ").Replace("&", " ").Replace("*", " ").Replace("^", " ").Replace("*", " ").Replace("(", " ").Replace(")", " ").ToLower();
                String bersih = System.Text.RegularExpressions.Regex.Replace(tmp, @"\s+", " ");
                String[] split = bersih.Split(' ');

                List<string> tampung = new List<string>();
                for (int j = 0; j < split.Count(); j++) //LOOP KATA DALAM BERITA
                {
                    split[j] = split[j].Trim();
                    if (tampung.IndexOf(split[j]) == -1)
                    {
                        tampung.Add(split[j]);
                    }
                }
                for (int j = 0; j < tampung.Count; j++)
                {
                    if (tampung[j] != "")
                    {
                        insert(ref asdf, tampung[j], dt.Rows[i].ItemArray[0].ToString());
                    }
                }
                tampung.Clear();
            }
        }

        class TSTNODE
        {
            public char symbol;
            public string prefix;
            public TSTNODE left, right, equal;
            public TSTNODE parent;
            public List<string> value = new List<string>();

            public TSTNODE(string prefix, TSTNODE parent)
            {
                this.prefix = prefix;
                this.symbol = prefix[0];
                this.left = null;
                this.right = null;
                this.equal = null;
                this.parent = parent;
                this.value.Add(null);
            }
        }
        TSTNODE find(TSTNODE root, string key)
        {
            TSTNODE node = root;
            TSTNODE last = null;
            bool equal = false;
            while (!equal)
            {
                if (node == null)
                    return null;
                else
                {
                    char symbol = key[0];
                    while (symbol != node.symbol)
                    {
                        if (symbol < node.symbol)
                        {
                            if (node.left == null)
                                return null;
                            node = node.left;
                        }
                        else
                        {
                            if (node.right == null)
                                return null;
                            node = node.right;
                        }
                    }
                    int i;
                    for (i = 1; i < key.Length && i < node.prefix.Length; i++)
                        if (key[i] != node.prefix[i])
                            break;
                    if (i < node.prefix.Length)
                        return null;
                    if (i == key.Length)
                        equal = true;
                    else
                    {
                        key = key.Substring(i);
                        equal = false;
                    }
                }
                last = node;
                node = node.equal;
            }
            return last;
        }

        void insert(ref TSTNODE root, string key, string value)
        {
            TSTNODE node = root;
            TSTNODE last = null;
            bool equal = false;
            while (!equal)
            {
                if (node == null)
                {
                    if (last == null)
                        node = root = new TSTNODE(key, null);
                    else
                        node = last.equal = new TSTNODE(key, last);
                    equal = true;
                }
                else
                {
                    char symbol = key[0];
                    equal = false;
                    while (symbol != node.symbol)
                    {
                        if (symbol < node.symbol)
                        {
                            if (node.left == null)
                            {
                                node.left = new TSTNODE(key, node);
                                equal = true;
                            }
                            last = node;
                            node = node.left;
                        }
                        else
                        {
                            if (node.right == null)
                            {
                                node.right = new TSTNODE(key, node);
                                equal = true;
                            }
                            last = node;
                            node = node.right;
                        }
                    }
                    if (!equal)
                    {
                        int i;
                        for (i = 1; i < key.Length && i < node.prefix.Length; i++)
                            if (key[i] != node.prefix[i])
                                break;
                        if (i < node.prefix.Length)
                        { //split
                            TSTNODE new_node = new TSTNODE(node.prefix.Substring(i), node);
                            new_node.equal = node.equal;
                            if (node.equal != null)
                                node.equal.parent = new_node;
                            new_node.value = node.value;
                            node.value = null;
                            node.equal = new_node;
                            node.prefix = node.prefix.Substring(0, i);
                        }
                        if (i == key.Length)
                            equal = true;
                        else
                        {
                            key = key.Substring(i);
                            equal = false;
                        }
                    }
                }
                last = node;
                node = node.equal;
            }
            
            try
            {
                if (last.value != null)
                {
                    last.value.Add(value);
                }
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MessageBox.Show(last.value[last.value.Count -2]);
                throw;
            }
        }


        private void Form1_Load(object sender, EventArgs e)
        {
            connectionString = "server=localhost;userid=root;password=;database=sdl";
            conn = new MySqlConnection(connectionString);
            try
            {
                conn.Open();
                //MessageBox.Show(conn.ServerVersion);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                throw;
            }
            read();
            //listBox1.Items.Add(find(asdf, "bom").value[1].ToString());
            /*
            insert(ref asdf, "bom", "0");
            insert(ref asdf, "di", "0");
            insert(ref asdf, "bali", "0");
            insert(ref asdf, "bali", "2");

            List<string> xyz = new List<string>();
            xyz.Add(find(asdf, "bom").value[1].ToString());
            //MessageBox.Show(find(asdf, "bom").value[1].ToString());
            xyz.Add("aaa");
            for (int i = 0; i < xyz.Count(); i++)
            {
            listBox1.Items.Add(xyz[i]);   
            }
            xyz.Clear();
            for (int i = 1; i < 3; i++)
            {
                xyz.Add(find(asdf, "bali").value[i].ToString());
            }
            for (int i = 0; i < xyz.Count(); i++)
            {
                listBox1.Items.Add(xyz[i]);
            }
            //listBox1.Items.Add(asdf.prefix.ToString());
            */
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand("insert into news (title, isi) values ('" + textBox2.Text + "', '" + richTextBox1.Text + "')", conn);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Insert success");
                textBox2.Text = "";
                richTextBox1.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            for (int i = 1; i < find(asdf,textBox1.Text.ToLower().Trim()).value.Count; i++)
            {
                listBox1.Items.Add(find(asdf,textBox1.Text).value[i].ToString());
            }
        }

        private void listBox1_DoubleClick(object sender, EventArgs e)
        {
            judul = listBox1.SelectedItem.ToString();
            Form2 f = new Form2();
            f.judul = judul;
            f.conn = conn;
            f.ShowDialog();
        }
    }
}
