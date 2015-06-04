# Communities Login Page
A Bootstrap login page for Salesforce Communities<br/>
## How to Setup
1. Download folder "src" into your local workspace.
1. Upload the bootstrap zip file into salesforce as a static resource.
1. Load the all the background images into the images folder and compress that into a zip file.
1. Load the images zip file as a static resource in Salesforce.<br/>
<b>Note:</b> Make sure that Zip file is less that 5 MB size (Salesforce limitation). <br/>
&nbsp;&nbsp;&nbsp;If it is more that 5 MB consider loading image by image individually into a static resource.
1. Now modify the Visualforce page with the background images from the zip file. <br/>
{!$Resource.ResourceName} - if the images are loaded individually.<br/>
{!URLFOR($Resource.ResourceName, '/image/filename')} - If the images are loaded as a zip file.
1. Update navigation links and Signle sign on links as needed.
