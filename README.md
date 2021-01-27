Script to check if multiple sites have SSL with CAMERFIRMA

Announcement
https://groups.google.com/g/mozilla.dev.security.policy/c/dSeD3dgnpzk/m/iAUwcFioAQAJ

> After full consideration of the information available, and in order to
protect and safeguard Chrome users, certificates issued by AC Camerfirma SA
will no longer be accepted in Chrome, beginning with Chrome 90.
This will be implemented via our existing mechanisms to respond to CA
incidents, via an integrated blocklist. Beginning with Chrome 90, users
that attempt to navigate to a website that uses a certificate that chains
to one of the roots detailed below will find that it is not considered
secure, with a message indicating that it has been revoked. Users and
enterprise administrators will not be able to bypass or override this
warning.

Permissions
```shell
sudo chmod u+x checkCamerfirma.sh
```

Add new sites on 
[checkCarmerfirma.txt](checkCarmerfirma.txt)

Run command
```shell
./checkCamerfirma.sh
```
