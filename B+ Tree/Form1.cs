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

        int m = 20;

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

            public int insert(int key)
            {
                if (n == 0)
                {
                    keys[0] = key;
                    children[1] = null;
                    n++;
                    return 0;
                }
                else
                {
                    if (key > keys[size - 1])
                    {
                        keys[n++] = key;
                        children[n] = null;
                        return n - 1;
                    }
                    else
                    {
                        int position = find_position(key);
                        for (int i = n; i > position; i--)
                        {
                            children[i + 1] = children[i];
                            keys[i] = keys[i - 1];
                        }
                        keys[position] = key;
                        children[position + 1] = null;
                        n++;
                        return position;
                    }
                }
            }
            public int find_position(int key)
            {
                int position = Array.BinarySearch(keys, 0, n, key);
                if (position < 0)
                    return ~position;
                else if (position < n && keys[position] == key)
                    return position + 1;
                else
                    return position;
            }

        }

        void insert(ref MULTINODE root, int key)
        {
            MULTINODE new_node = new MULTINODE(m);
            if (root == null)
            {
                root = new_node;
                root.insert(key);
            }
            else
            {
                MULTINODE current = root;
                while (true)
                {
                    if (current.children[0] == null)
                    { //insert must be in leaf
                        int position = current.insert(key);
                        while (current.n > current.size)
                        { //current is overflow
                          //split by two
                            Object[] result = split(ref root, current);
                            //try to insert middle key to parent
                            MULTINODE new_node1 = (MULTINODE)result[0];
                            key = (int)result[1];
                            current = current.parent;
                            position = current.insert(key);
                            current.children[position + 1] = new_node1;
                        }
                        break;
                    }
                    else
                    {
                        //interior node must have at least two children
                        int position = current.find_position(key);
                        current = current.children[position];
                    }
                }
            }
        }
        Object[] split(ref MULTINODE root, MULTINODE node)
        {
            int mid = node.n / 2;
            if (node.parent == null)
            {
                root = new MULTINODE(m);
                root.children[0] = node;
                node.parent = root;
            }
            MULTINODE new_node = new MULTINODE(m);
            new_node.parent = node.parent;
            int nk = 0;
            for (int k = (node.children[0] == null /*leaf*/) ? mid : mid + 1;
                 k < node.n; k++, nk++)
            {
                new_node.insert(node.keys[k]);
                move_parent(new_node, nk, node.children[k]);
            }
            move_parent(new_node, nk, node.children[node.n]);
            node.n = mid;
            if (node.children[0] == null)
            { //leaf
                new_node.next = node.next;
                if (node.next != null)
                    node.next.prev = new_node;
                new_node.prev = node;
                node.next = new_node;
            }
            return new Object[] { new_node, node.keys[mid] };
        }
        void move_parent(MULTINODE parent, int position, MULTINODE child)
        {
            parent.children[position] = child;
            if (child != null)
                child.parent = parent;
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
