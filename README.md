# Booking Example

Simple demo application that shows integration between a web app (landing page based) and the LIVE WELL booking widget.

The application flow in this demo is as follows:

1. Lead form. User fills in their details and presses submit. Data is POSTed to backend.
2. Receive the lead, construct the GET params for the booking URI, render the schedule template with the embedded iframe with the booking URI.
3. Done.
