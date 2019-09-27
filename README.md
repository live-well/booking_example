# Booking Example

Simple demo application that shows integration between a web app (landing page based) and the LIVE WELL booking widget.

The application flow in this demo is as follows:

1. Lead form. User fills in their details and presses submit. Data is POSTed to backend.
2. From here it can be stored on the application hosting the lander and/or POST the lead to the CRM.
3. Receive the lead, construct the GET params for the booking URI, render the schedule template with the embedded iframe with the booking URI.
4. Done.
