<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Student.Master" AutoEventWireup="true" CodeBehind="Ratings.aspx.cs" Inherits="JobPortal.WebPages.Ratings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .rate {
            float: left;
            height: 96px;
            padding: 0 10px;
        }

            .rate:not(:checked) > input {
                position: absolute;
                top: -9999px;
            }

            .rate:not(:checked) > label {
                float: right;
                width: 1em;
                overflow: hidden;
                white-space: nowrap;
                cursor: pointer;
                font-size: 70px;
                color: #ccc;
            }

                .rate:not(:checked) > label:before {
                    content: '★ ';
                }

            .rate > input:checked ~ label {
                color: #ffc700;
            }

            .rate:not(:checked) > label:hover,
            .rate:not(:checked) > label:hover ~ label {
                color: #deb217;
            }

            .rate > input:checked + label:hover,
            .rate > input:checked + label:hover ~ label,
            .rate > input:checked ~ label:hover,
            .rate > input:checked ~ label:hover ~ label,
            .rate > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }

        /* Modified from: https://github.com/mukulkant/Star-rating-using-pure-css */
    </style>

    <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
                </div>
            </div>
        </div>
    </div>
    <center>
    <div class="card  shadow-lg p-3 mb-5 bg-white rounded" style="width: 60%;margin-top:-430px">
        <form id="form1" runat="server" style="padding:30px">
            <div class="card-header heading-3"> <h3 class="mb-3 bread">Help Us to Serve you Better !!</h3></div>
            <div class="rate card-body">
                <input type="radio" id="star5" name="rate" value="5" onclick="getstar(5)" />
                <label for="star5" title="text">5 stars</label>
                <input type="radio" id="star4" name="rate" value="4" onclick="getstar(4)" />
                <label for="star4" title="text">4 stars</label>
                <input type="radio" id="star3" name="rate" value="3" onclick="getstar(3)" />
                <label for="star3" title="text">3 stars</label>
                <input type="radio" id="star2" name="rate" value="2" onclick="getstar(2)" />
                <label for="star2" title="text">2 stars</label>
                <input type="radio" id="star1" name="rate" value="1" onclick="getstar(1)" />
                <label for="star1" title="text">1 star</label>
            </div>
          <br />  <br /><br />
            <asp:HiddenField  runat="server" Value="0"  id="hdn" ClientIDMode="Static"/>
            <asp:TextBox runat="server" placeholder="Write Comment here" CssClass="form-control" ID="cmt" ToolTip="Optional"></asp:TextBox>
          <asp:Label runat="server" ID="lblerr" Visible="false" ForeColor="Red"></asp:Label>
              <br />
            <asp:Button runat="server" CssClass="btn btn-lg btn-primary" Text="Submit" OnClick="Unnamed_Click" />
        </form>
    </div>
        </center>
    <script>
        function getstar(va) {
            //  alert(val);
            $('#hdn').val(va);
           
            return true;
        }
    </script>

</asp:Content>
