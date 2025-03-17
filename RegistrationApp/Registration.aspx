<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationFormApp.Registration" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Compact Registration Form</title>
    <style>
        /* Global Styling */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #007bff, #6c757d);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            padding: 10px;
        }

        /* Compact Form Container */
        .container {
            width: 90%;
            max-width: 700px;
            background: #fff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.15);
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 10px;
            width: 100%;
            font-size: 20px;
        }

        /* Compact Two-Column Layout */
        .form-group {
            width: 48%;
            margin-bottom: 8px;
        }

        label {
            font-size: 12px;
            font-weight: bold;
            color: #555;
            display: block;
            margin-bottom: 3px;
        }

        /* Input & Select Fields */
        input, select, textarea {
            width: calc(100% - 6px);
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 12px;
            transition: 0.3s;
        }

        input:focus, select:focus, textarea:focus {
            border-color: #007bff;
            box-shadow: 0px 0px 3px rgba(0, 123, 255, 0.4);
            outline: none;
        }

        textarea {
            height: 50px;
            resize: none;
        }

        /* Full Width for Comments */
        .full-width {
            width: 100%;
        }

        /* Compact Button */
        .btn {
            width: 100%;
            padding: 8px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        /* Message Styling */
        .message {
            text-align: center;
            font-size: 12px;
            margin-top: 5px;
            width: 100%;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .form-group {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Register Now</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="message" ForeColor="Red"></asp:Label>

            <!-- Left Side Fields -->
            <div class="form-group">
                <label>Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Address:</label>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Phone:</label>
                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Age:</label>
                <asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>DOB:</label>
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <!-- Right Side Fields -->
            <div class="form-group">
                <label>Nationality:</label>
                <asp:DropDownList ID="ddlNationality" runat="server">
                    <asp:ListItem Text="Select" Value="" />
                    <asp:ListItem Text="Filipino" Value="Filipino" />
                    <asp:ListItem Text="American" Value="American" />
                    <asp:ListItem Text="Canadian" Value="Canadian" />
                    <asp:ListItem Text="British" Value="British" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Occupation:</label>
                <asp:TextBox ID="txtOccupation" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Status:</label>
                <asp:DropDownList ID="ddlMaritalStatus" runat="server">
                    <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                    <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                    <asp:ListItem Text="Divorced" Value="Divorced"></asp:ListItem>
                    <asp:ListItem Text="Widowed" Value="Widowed"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Gender:</label>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Profile Pic:</label>
                <asp:FileUpload ID="fileProfilePic" runat="server" />
            </div>

            <div class="form-group full-width">
                <label>Comments:</label>
                <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="form-group full-width">
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />
            </div>
        </div>
    </form>
</body>
</html>
