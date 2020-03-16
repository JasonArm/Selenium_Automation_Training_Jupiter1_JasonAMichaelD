using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeleniumAutomation1.PageObjects
{
    public class HomePage
    {
        private string baseURL => Properties.Settings.Default.BaseURL;
        private IWebDriver driver;

        public void clickStartShopping() => startButton.Click();

        private IWebElement startButton => driver.FindElement(startButtonBy);

        private By startButtonBy = By.CssSelector("a[class^='btn btn-success']");

        public HomePage(IWebDriver driver)
        {
            this.driver = driver;
        }

        public void GotoBaseURL()
        {
            Console.WriteLine("Going to URL: " + baseURL);
            try
            {
                driver.Navigate().GoToUrl(baseURL);
                driver.Manage().Window.Maximize();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                throw new AssertFailedException("Error in HomePage going to URL: " + baseURL, e);
            }
        }

    }
}
