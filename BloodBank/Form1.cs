﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace BloodBank
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            
        }


        //private void test()
        //{
        //    using (SqlConnection conn = new SqlConnection(Helper.CnnVal("BloodBankDB")))
        //    {
        //        SqlDataAdapter sda = new SqlDataAdapter("exec sp_ShowDonorsTable", conn);
        //        SqlCommandBuilder builder = new SqlCommandBuilder(sda);

        //        var ds = new DataSet();
        //        sda.Fill(ds);
        //        dataGridView1.DataSource = ds.Tables[0];
        //    }
        //}

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AccessManagers.Patient patient = new AccessManagers.Patient();
            patient.InsertNewPatient("mohammed", "M", "B+", "2002-5-8", "12345", "mansoura");
        }
    }
}