using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Text;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            SaveRegistration();
            ClearForm();
        }
    }

    /// <summary>
    /// Write data into Access Database
    /// </summary>
    private void SaveRegistration()
    {
        OleDbConnectionStringBuilder sb = new OleDbConnectionStringBuilder();
        sb.Provider = "Microsoft.ACE.OLEDB.12.0";
        sb.DataSource = Server.MapPath("database2.accdb");
        OleDbConnection myConnection = new OleDbConnection(sb.ConnectionString);
        string queryString = "";
        OleDbCommand myCmd = new OleDbCommand(queryString, myConnection);
        myConnection.Open();

        try
        {
            StringBuilder queryStringBuilder = new StringBuilder("Insert into Customer([Username], [Password], [Email], [Phone])");

            queryStringBuilder.Append("values ('");
            queryStringBuilder.Append(txtSignInName.Text);
            queryStringBuilder.Append("','");
            queryStringBuilder.Append(txtSignInPassword.Text);
            queryStringBuilder.Append("','");
            queryStringBuilder.Append(txtSignInEMail.Text);
            queryStringBuilder.Append("','");
            queryStringBuilder.Append(txtSignInPhone.Text);
            queryStringBuilder.Append("')");
            queryString = queryStringBuilder.ToString();
        }
        catch (Exception e)
        {
            Console.WriteLine("An error occurred: ", e);
        }

        myCmd.CommandText = queryString;
        myCmd.ExecuteNonQuery();
        myConnection.Close();

        //Show an alert message to user
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Congratulations!!! You've registered successfully!!!')", true);
    }

    /// <summary>
    /// Clear all the inputs after submit
    /// </summary>
    protected void ClearForm()
    {
        txtSignUpName.Text = string.Empty;
        txtSignUpPassword.Text = string.Empty;

        txtSignInName.Text = string.Empty;
        txtSignInPassword.Text = string.Empty;
        txtSignInEMail.Text = string.Empty;
        txtSignInPhone.Text = string.Empty;
    }
}