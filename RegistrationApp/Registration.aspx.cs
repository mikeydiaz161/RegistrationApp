using System;
using System.Web.UI;

namespace RegistrationFormApp
{
    public partial class Registration : Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Retrieve user inputs
            string name = txtName.Text.Trim();
            string address = txtAddress.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string dob = txtDOB.Text.Trim();
            string nationality = ddlNationality.SelectedValue;
            string occupation = txtOccupation.Text.Trim();
            string maritalStatus = ddlMaritalStatus.SelectedValue;
            string gender = ddlGender.SelectedValue;
            string comments = txtComments.Text.Trim();
            int age;

            // Validate Age
            if (!int.TryParse(txtAge.Text, out age) || age < 1)
            {
                lblMessage.Text = "Please enter a valid age.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate Email
            if (!email.Contains("@") || !email.Contains("."))
            {
                lblMessage.Text = "Please enter a valid email address.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate Phone Number
            if (phone.Length < 10)
            {
                lblMessage.Text = "Please enter a valid phone number.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate Profile Picture Upload
            if (!fileProfilePic.HasFile)
            {
                lblMessage.Text = "Please upload a profile picture.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Simulating data processing (In actual implementation, save data to a database)
            lblMessage.Text = "Registration Successful!";
            lblMessage.ForeColor = System.Drawing.Color.Green;
        }
    }
}
