This VI is intended for use when you need to set an application to 
active, from LabVIEW, but that application is external and doesn't 
have a Windows Title bar. 

When the external application has a windows title bar, you can skip
the first part of this VI, and run the VBScript to call directly the
window title string from the window title bar. 

When the external application DOES NOT have a windows title bar, 
which is the scope of this VI, then we can activate it using the 
process ID (PID). However, PID might change, from run to run. For 
this, the VI will call first the command "TASKLIST" to extract from
it the process ID for the Task we are looking to activate, and then
update a VBScript to use the new PID to activate the application. 

From LabVIEW, we need to use a batch file to be able to call the 
.vbs file that will bring the external application to foreground.

Keep in mind that if external application is minimized, then it 
will not be visible. For that case you'll need to modify this script. 

