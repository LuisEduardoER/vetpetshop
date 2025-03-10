﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidade;
using Negocios;
using System.Data;

namespace WebUI
{
    public partial class ConsultarEstatisticas : System.Web.UI.Page
    {
        Usuario usuario = new Usuario();  

        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (Usuario)Session["User"];

            if (usuario == null)
                Response.Redirect("Login.aspx");

            #region Criação de Menu
            if (usuario.TipoUsuario == 1)
            {
                Menu menu = (Menu)Page.Master.FindControl("Menu1");
                SiteMapDataSource siteAdmin = (SiteMapDataSource)Page.Master.FindControl("adm");
                menu.DataSource = siteAdmin;
                menu.DataBind();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            #endregion
        }

        protected void ddlPetOpcoes_SelectedIndexChanged(object sender, EventArgs e)
        {
            PnDataPet.Visible = true;
        }

        protected void ddlVetOpcoes_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((ddlVetOpcoes.SelectedValue == "1") || (ddlVetOpcoes.SelectedValue == "2") || (ddlVetOpcoes.SelectedValue == "3") || (ddlVetOpcoes.SelectedValue == "4"))
            {
                PnDataVet.Visible = true;
                txtDataFimVet.Text = "";
                txtDataInicioVet.Text = "";
                PnVetSexoAnimal.Visible = false;
                PnVetSexoCliente.Visible = false;
                PnVetConsultas.Visible = false;
                PnVetVacinas.Visible = false;
            }
            else 
            {
                PnDataVet.Visible = false;
                PnVetSexoCliente.Visible = false;
                PnVetSexoAnimal.Visible = false;
                PnVetConsultas.Visible = false;
                PnVetVacinas.Visible = false;
            }
        }

        protected void btnOkPet_Click(object sender, EventArgs e)
        {
            if (ddlPetOpcoes.SelectedValue == "1")
            {
                if (txtDataInicioVet.Text != "" && txtDataFimVet.Text != "")
                {
                    CarregaProdutosVendidos(Convert.ToDateTime(txtDataInicioVet.Text), Convert.ToDateTime(txtDataFimVet.Text));
                }
                else
                {
                    CarregaProdutosVendidos(null, null);
                }
            }
        }

        protected void btnOkVet_Click(object sender, EventArgs e)
        {
            if (ddlVetOpcoes.SelectedValue == "1")
            {
                if (txtDataInicioVet.Text != "" && txtDataFimVet.Text != "")
                {
                    CarregaSexoClientes(Convert.ToDateTime(txtDataInicioVet.Text), Convert.ToDateTime(txtDataFimVet.Text));
                }
                else
                {
                    CarregaSexoClientes(null, null);
                }
            }

            if (ddlVetOpcoes.SelectedValue == "2")
            {
                if (txtDataInicioVet.Text != "" && txtDataFimVet.Text != "")
                {
                    CarregaSexoAnimais(Convert.ToDateTime(txtDataInicioVet.Text), Convert.ToDateTime(txtDataFimVet.Text));
                }
                else
                {
                    CarregaSexoAnimais(null, null);
                }
            }

            if (ddlVetOpcoes.SelectedValue == "3")
            {
                if (txtDataInicioVet.Text != "" && txtDataFimVet.Text != "")
                {
                    CarregaConsultasAnimais(Convert.ToDateTime(txtDataInicioVet.Text), Convert.ToDateTime(txtDataFimVet.Text));
                }
                else
                {
                    CarregaConsultasAnimais(null, null);
                } 

            }

            if (ddlVetOpcoes.SelectedValue == "4")
            {
                if (txtDataInicioVet.Text != "" && txtDataFimVet.Text != "")
                {
                    CarregaVacinasAnimais(Convert.ToDateTime(txtDataInicioVet.Text), Convert.ToDateTime(txtDataFimVet.Text));
                }
                else
                {
                    CarregaVacinasAnimais(null, null);
                }

            }

            
        }

        public void CarregaConsultasAnimais(Nullable<DateTime> DataInicio, Nullable<DateTime> DataFim)
        {
            int[] qtdAni = new int[7];

            AnimalBuss animalBus = new AnimalBuss();

            qtdAni = animalBus.EstBuscaConsultaAnimal(DataInicio, DataFim);

            if (qtdAni.Count() > 0)
            {
                for (int i = 0; i < qtdAni.Length - 1; )
                {
                    Label18.Text = qtdAni[i].ToString();
                    i++;
                    Label20.Text = qtdAni[i].ToString();
                    i++;
                    Label22.Text = qtdAni[i].ToString();
                    i++;
                    Label24.Text = qtdAni[i].ToString();
                    i++;
                    Label26.Text = qtdAni[i].ToString();
                    i++;
                    Label28.Text = qtdAni[i].ToString();
                    i++;
                    Label42.Text = qtdAni[i].ToString();
                }

                PnVetConsultas.Visible = true;
            }
            else
            {
                lblMsg.Text = "Erro na busca. Tente novamente.";
            }
        }

        public void CarregaVacinasAnimais(Nullable<DateTime> DataInicio, Nullable<DateTime> DataFim)
        {
            int[] qtdAni = new int[7];

            AnimalBuss animalBus = new AnimalBuss();

            qtdAni = animalBus.EstBuscaConsultaAnimal(DataInicio, DataFim);

            if (qtdAni.Count() > 0)
            {
                for (int i = 0; i < qtdAni.Length - 1; )
                {
                    Label30.Text = qtdAni[i].ToString();
                    i++;
                    Label32.Text = qtdAni[i].ToString();
                    i++;
                    Label34.Text = qtdAni[i].ToString();
                    i++;
                    Label36.Text = qtdAni[i].ToString();
                    i++;
                    Label38.Text = qtdAni[i].ToString();
                    i++;
                    Label40.Text = qtdAni[i].ToString();
                    i++;
                    Label44.Text = qtdAni[i].ToString();
                }

                PnVetVacinas.Visible = true;
            }
            else
            {
                lblMsg.Text = "Erro na busca. Tente novamente.";
            }
        }

        public void CarregaSexoClientes(Nullable<DateTime> DataInicio,Nullable<DateTime> DataFim)
        {
           int[] qtdCli = new int[3];

           ClienteBuss clienteBus = new ClienteBuss();

           qtdCli = clienteBus.EstBuscaSexoCliente(DataInicio, DataFim);

           if (qtdCli.Count() > 0)
           {
               for (int i = 0; i < qtdCli.Length - 1; )
               {
                   Label6.Text = qtdCli[i].ToString();
                   i++;
                   Label8.Text = qtdCli[i].ToString();
                   i++;
                   Label10.Text = qtdCli[i].ToString();
               }

               PnVetSexoCliente.Visible = true;
           }
           else 
           {
               lblMsg.Text = "Erro na busca. Tente novamente.";
           }
        }

        public void CarregaSexoAnimais(Nullable<DateTime> DataInicio, Nullable<DateTime> DataFim)
        {
            int[] qtdAni = new int[3];

            AnimalBuss animalBus = new AnimalBuss();

            qtdAni = animalBus.EstBuscaSexoAnimal(DataInicio, DataFim);

            if (qtdAni.Count() > 0)
            {
                for (int i = 0; i < qtdAni.Length - 1; )
                {
                    Label14.Text = qtdAni[i].ToString();
                    i++;
                    Label16.Text = qtdAni[i].ToString();
                    i++;
                    Label12.Text = qtdAni[i].ToString();
                }

                PnVetSexoAnimal.Visible = true;
            }
            else
            {
                lblMsg.Text = "Erro na busca. Tente novamente.";
            }
        }

        public void CarregaProdutosVendidos(Nullable<DateTime> DataInicio, Nullable<DateTime> DataFim) 
        {
            DataTable tabelaPreenchida = PreencherGridProdutos(DataInicio, DataFim);

            if (tabelaPreenchida.Rows.Count != 0)
            {
                grProdutos.DataSource = tabelaPreenchida;
                grProdutos.DataBind();
                PnPet.Visible = true;
            }
        }

        private DataTable PreencherGridProdutos(Nullable<DateTime> DataInicio, Nullable<DateTime> DataFim)
        {
            DataTable tabela = new DataTable();
            DataTable tabelaPreenchida = new DataTable();
            tabela = MontarTabelaProdutos();

            FinanceiroBuss financeiroBus = new FinanceiroBuss();
            tabelaPreenchida = financeiroBus.ListarProdutosVendidosPorData(tabela, DataInicio, DataFim);
            return tabelaPreenchida;
        }

        private DataTable MontarTabelaProdutos()
        {
            DataTable _tabela = new DataTable();

            DataColumn coluna0 = new DataColumn("nm_produto");
            DataColumn coluna1 = new DataColumn("qtd_vendida");
            DataColumn coluna2 = new DataColumn("nm_grupo");
            
            _tabela.Columns.Add(coluna0);
            _tabela.Columns.Add(coluna1);
            _tabela.Columns.Add(coluna2);
            
            return _tabela;
        }

    }
}
