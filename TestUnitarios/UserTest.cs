using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MF0493_3;
using MF0493_3.Models;
using System.Collections.Generic;

namespace TestUnitarios
{
    [TestClass]
    public class UserTest
    {
        [TestMethod]
        public void CrearTest()
        {
            UserManager.CrearAdmin();
            Usuario user = UserManager.get("admin");
            Assert.AreEqual(user.email, "jucles@a2000.es");
            Assert.AreEqual(user.username, "admin");
        }

        [TestMethod]
        public void AllTest()
        {
            List<Usuario> lista = new List<Usuario>();
            lista = UserManager.getAll();
            Assert.AreEqual(lista.Count, 1);
        }
    }
}
