Text_data <- c("1.- What is Brainsfeed for?
    Brainsfeed enables entrepreneur to collect valuable feedback in order to improve their project.",
 " 2.- What's a brainsfeeder?
    A Brainsfeeder is a user that provides feedback to entrepreneurs on submitted projects.",
  "3.-Why should I submit my project on brainsfeed?
    The feedback provided on Brainsfeed is invaluable to you as an entrepreneur. Acquiring feedback from multiple perspectives and professional fields allows you to get a more wholesome feedback experience than simply going to your immediate social circle. With the innovative and powerful combination of crowdsourcing and AI, Brainsfeed is simply the best tool to enhance and accelerate the growth of your entrepreneurial projects.",
  "4.-What are the benefits to becoming a Brainsfeeder?
    Each Brainsfeeder receives some rewards depending on the quality of his/her feedback. You can get some money, direct access to the results or/and social reputation/credibility.",
  "5.-Why is Brainsfeed better than a typical survey or form builder?
    Brainsfeed focuses on people and considers that what matters is who is answering to the form and not the form itself. I would say that with a usual survey, I would have to go around asking people for feedback or sharing the survey link on social media, hoping for responses. With Brainsfeed, there is a network of people already willing to provide their advice and feedback to entrepreneurs. Brainsfeed makes it easier for entrepreneurs to receive feedback on their projects. Saves time and energy. Also, the feedback is high quality. Most surveys are anonymous whereas Brainsfeed allows you to receive feedback from real people.",
  "6.-Will my project remain confidential?
    All Brainsfeeders are asked to digitally sign the Terms of Use. These terms outline the commitment every Brainsfeeder must make to never copy or publish the content they view on the Brainsfeed platform. To go further, please look at our confidentiality policy.",
  "7.-Can I manage who can see what?
    You are always in control. You can request feedback from a specific group of people that you have selected prior to submitting your project.",
  "8.-How long does it take to receive feedback?
    Prior to submitting your project, you are given the ability to set a time frame for how long Brainsfeeders have to provide their feedback on your project. The time frame you are allowed to select ranges from 1 day to a full month.",
  "9. Can I earn money as a Brainsfeeder?
    Yes, you can! Financial rewards are available for certain specific projects. Please check the list of incentives before joining a project.",
  "10.-Can I manage the incentives for my project ?
    As entrepreneur, you are free to choose how you would like to attract the Brainsfeeders.
  Last but not least: Is Brainsfeed free to use?
    The service is 100% free of charge for all Brainsfeeders. However, brainsfeed may apply a fee to entrepreneurs when they use money as incentives for a specific project.")

tf <- tempfile()
writeLines(Text_data, tf)
Resut<-Fetch_info(tf, 2, "\t")

