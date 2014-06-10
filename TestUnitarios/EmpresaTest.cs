using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MF0493_3;
using MF0493_3.Models;

namespace TestUnitarios
{
    [TestClass]
    public class EmpresaTest
    {
        [TestMethod]
        public void newTest()
        {
            Empresa emp = new Empresa();
            emp.activa = true;
            emp.email = "danielbonfils@gmail.com";
            emp.ff = DateTime.Now;
            emp.logo = "logo.jpg";
            emp.usr = "admin";
            emp.nif = "76635148E";
            emp.telefono = "647578142";
            emp.poblacion = "Almería";
            emp.nombre="Mi empresa";

            EmpresaManager.Nueva(emp);
            Empresa empresa = EmpresaManager.get(emp.nif);
            Assert.AreEqual(empresa.nombre, "Mi empresa");

        }

        [TestMethod]

        public void ModificarTest()
        {
            Empresa emp = new Empresa();
            emp.activa = true;
            emp.email = "danielbonfils@gmail.com";
            emp.ff = DateTime.Now;
            emp.logo = "logo.jpg";
            emp.usr = "admin";
            emp.nif = "76635148E";
            emp.telefono = "647578142";
            emp.poblacion = "Almería";
            emp.nombre = "Mi empresa";

            EmpresaManager.Nueva(emp);
            Empresa empresa = EmpresaManager.get(emp.nif);
            Assert.AreEqual(empresa.nombre, "Mi empresa");

            emp.nif = "76635149T";

            bool editada = EmpresaManager.Modificar(emp);

            Empresa empresa1 = EmpresaManager.get(emp.nif);

            Assert.IsTrue(editada);
            Assert.AreEqual(empresa1.nif, "76635149T");
        }

        [TestMethod]

        public void getTest()
        {
            Empresa emp = new Empresa();
            emp.activa = true;
            emp.email = "danielbonfils@gmail.com";
            emp.ff = DateTime.Now;
            emp.logo = "logo.jpg";
            emp.usr = "admin";
            emp.nif = "76635148E";
            emp.telefono = "647578142";
            emp.poblacion = "Almería";
            emp.nombre = "Mi empresa";

            EmpresaManager.Nueva(emp);
            Empresa empresa = EmpresaManager.get(emp.nif);
            Assert.AreEqual(empresa.nombre, "Mi empresa");
        }
    }
}
