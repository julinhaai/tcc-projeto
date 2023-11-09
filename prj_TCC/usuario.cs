using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prj_TCC
{
    public class usuario
    {
        public usuario() { }
        public string Nome { get; set; }
        public string Telefone { get; set; }

        public static List<usuario> Lista = new List<usuario>();

        public List<usuario> Todos()
        {
           return usuario.Lista;
        }

        public void salvar()
        {
            usuario.Lista.Add(this);
        }
    }
  

}