using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_Repeater.RepeaterWithClassData
{
    public partial class RepeaterWithClassData : System.Web.UI.Page
    {
        private List<Person> people;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                InitializePeopleList();
                BindData(people);
            }
            else
            {
                people = (List<Person>)Session["people"];
            }

        }

        protected void InitializePeopleList()
        {
            people = new List<Person>()
            {
                new Person(){ Id = 1, Name = "John Doe" },
                new Person(){ Id = 2, Name = "Jane Smith" },
            };
            Session["people"] = people;
        }

        private void BindData(object data)
        {
            repeater1.DataSource = data;
            repeater1.DataBind();
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // 獲取當前資料項
                Person dataItem = (Person)e.Item.DataItem;

                // 找到 btnDelete 按鈕
                Button btnDelete = (Button)e.Item.FindControl("btnDelete");

                // 設置 CommandArgument
                if (btnDelete != null)
                {
                    btnDelete.CommandArgument = dataItem.Id.ToString();
                }
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int argId = Convert.ToInt32(e.CommandArgument);
                // 在這裡執行刪除邏輯
                Person personToDelete = people.FirstOrDefault(x => x.Id == argId);
                if (personToDelete != null)
                {
                    Session["people"] = people.Remove(personToDelete);
                }
                BindData(people);
            }
        }
    }
}