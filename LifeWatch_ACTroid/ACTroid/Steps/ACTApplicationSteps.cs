using System;
using TechTalk.SpecFlow;

namespace ACTroid.Steps
{
    [Binding]
    public class ACTApplicationSteps
    {
        [When(@"I press the ""(.*)"" button")]
        public void WhenIPressTheButton(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"I wait ""(.*)"" Seconds")]
        public void WhenIWaitSeconds(int p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"ACT program should be open")]
        public void ThenACTProgramShouldBeOpen()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
