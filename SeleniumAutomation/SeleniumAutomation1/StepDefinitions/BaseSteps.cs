using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using OpenQA.Selenium.Chrome;
using SeleniumAutomation1.PageObjects;
using TechTalk.SpecFlow;

namespace SeleniumAutomation1.StepDefinitions
{
    [Binding]
    public class BaseSteps
    {
        protected static StepContext context;
        protected HomePage _homePage;

        public BaseSteps(StepContext context)
        {
            BaseSteps.context = context;
        }

        [Given(@"I have navigated to the Jupiter Toys website")]
        public void GivenIHaveNavigatedToTheWebsite()
        {
            context.driver = new ChromeDriver();
            _homePage = new HomePage(context.driver);
            context._homePage = _homePage;
            _homePage.GotoBaseURL();
        }

        [When(@"I press on the ""(.*)"" button")]
        public void WhenIPressOnTheButton(string buttonName)
        {
            _homePage.clickStartShopping();
            //Thread.Sleep(1000);
        }

        [Then(@"I should see some things for sale")]
        public void ThenIShouldSeeSomeThingsForSale()
        {
            // Do Something
        }

        [AfterTestRun]
        public static void AfterTestRun()
        {
            if (context?.driver != null)
            {
                context.driver.Quit();
            }
        }
    }
}
