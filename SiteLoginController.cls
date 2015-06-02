/**
 * An apex page controller that exposes the site login functionality
 */
global class SiteLoginController{
    global String username {get; set;}
    global String password {get; set;}
    public String startUrl {get; set;}
    
    global SiteLoginController_Labs(){
        orgId = UserInfo.getOrganizationId();
        startUrl = System.currentPageReference().getParameters().get('startURL');
        if (startUrl == null) startUrl = '/home page of the community';
    }
    
    global PageReference login() {
        PageReference pg;
        if(String.isBlank(password)){
            ApexPages.addMessage( new ApexPages.Message(ApexPages.Severity.Info, 'Password is a required'));
            return null;
        }
        else{
                pg = Site.login(username, password, startUrl);
        }
        return pg;
    }
}