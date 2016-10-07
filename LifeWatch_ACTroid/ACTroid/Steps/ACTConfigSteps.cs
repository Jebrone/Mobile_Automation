using System;
using TechTalk.SpecFlow;

namespace ACTroid.Steps
{
    [Binding]
    public class ACTConfigSteps
    {
        [Given(@"I open ""(.*)"" Application on the Homescreen")]
        public void GivenIOpenApplicationOnTheHomescreen(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Enter the ""(.*)"" Password")]
        public void GivenEnterThePassword(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"I save and exit ACT Config")]
        public void ThenISaveAndExitACTConfig()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"Technician Mode should be ""(.*)""")]
        public void ThenTechnicianModeShouldBe(string p0)
        {
            ScenarioContext.Current.Pending();
        }
    }
}
