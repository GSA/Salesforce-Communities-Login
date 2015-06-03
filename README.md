# Communities Login Page
## How to Setup
1. Download folder "src" into your local workspace.
2. Upload the bootstrap zip file into salesforce as a static resource.
3. Load the all the background images into images folder and compress that into a zip file.
4. Load the images zip file as a static resource in Salesforce
<b>Note:</b> Make sure that Zip file is less that 5 MB size (Salesforce limitation). 
If it is more that 5 MB consider loading image by image individually into static resource.
5. Now modify the Visualforce page with the background images from the zip file.
  {!$Resource.ResourceName} - if the images are loaded individually
  {!URLFOR($Resource.ResourceName, '/image/filename')} - If the images are loaded as a zip file.
6. Modify the links of About, Terms & Conditions.
