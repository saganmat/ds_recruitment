Recruitment project
===========
Our company’s business model is about distributing leads (information about a job that needs to be done) to various companies all around Germany who could be interested in them.

In addition to leads we acquire ourselves, we also buy / exchange leads with allied businesses.

In order to do this, our applications are constantly sending and receiving information to and from various API endpoints. Since a lead’s structure varies between applications, a lot of data mapping and remapping happens all the time.

YOUR OBJECTIVE:
-------------

Implement a service that will receive lead information in a JSON format and produce a restructured JSON output that can be sent to another app.

Requirements:
1. The app must be able to receive lead JSON information and give a restructured JSON output
2. The input data needs to be validated for required fields. If any are missing, it should   give an appropriate JSON response.
3. The application’s user should have the ability to view past leads that were submitted.
4. The application should send a warning email to a dedicated email address when invalid parameters are submitted. The parameters should be included in a human format :wink:
5. The app should be able to restructure the information in another way, to be used by a different company.

Don’t worry about implementing everything during the short time we have. This task is here so we can learn how you think and solve problems, not measure your LOC/s ;)
