public with sharing class LabsForgotPasswordController {
    public String email{ get; set; }
    public String username;
    public PageReference reset() {
        if(email!= null){
            username = email+'.gsacommunity';
            List<User> commUser = [select id from User where Username =: username LIMIT 1];
            system.debug('----->'+commUser);
            if (commUser.size()>0){
                Site.forgotPassword(commUser[0].Id);
            }
            /*else{
                 ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'<span style="color:red;">Please check the email and try again</span>'));
                 return null;
            }*/
        }
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'<span style="color:Green;">Thank you, if you have an email address on file you will receive a password reset notification shortly.</span>'));
        return null;
    }



}