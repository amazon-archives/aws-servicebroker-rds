FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IDBhYWFmYzEwLTEzMmItNDFhOC1hNThjLTczMjY4ZmYxMDA2YQpuYW1lOiByZHMtbXlzcWwt\
YXBiCmltYWdlOiBhbnNpYmxlcGxheWJvb2tidW5kbGUvcmRzLW15c3FsLWFwYgpkZXNjcmlwdGlv\
bjogJ01hbmFnZWQgcmVsYXRpb25hbCBkYXRhYmFzZSBzZXJ2aWNlIHdpdGggYSBjaG9pY2Ugb2Yg\
c2l4IHBvcHVsYXIgZGF0YWJhc2UgZW5naW5lcy4gIFNldCB1cCwgb3BlcmF0ZSwgYW5kIHNjYWxl\
IGEgcmVsYXRpb25hbCBkYXRhYmFzZSBpbiB0aGUgY2xvdWQgd2l0aCBqdXN0IGEgZmV3IGNsaWNr\
cy4nCnRhZ3M6CiAgLSBhbWF6b24KICAtIGRhdGFiYXNlCmJpbmRhYmxlOiB0cnVlCmFzeW5jOiBv\
cHRpb25hbApwYXJhbWV0ZXJzOgogIC0gc3RhY2tfaWRlbnRpZmllcjoKICAgICAgdGl0bGU6IFVu\
aXF1ZSBTdGFjayBJZGVudGlmaWVyCiAgICAgIGRlc2NyaXB0aW9uOiAnVW5pcXVlIGlkZW50aWZp\
ZXIgdG8gYmUgaW5jbHVkZWQgaW4gdGhlIENsb3VkRm9ybWF0aW9uIFN0YWNrIE5hbWUgdG8gcHJl\
dmVudCBuYW1pbmcgY29sbGlzaW9ucy4gTXVzdCBvbmx5IGNvbnRhaW4gYWxwaGFudW1lcmljIGNo\
YXJhY3RlcnMgYW5kIGh5cGhlbnMuIChlLmcuICJzYW1wbGUtcmRzLXN0YWNrIiwgInByb2R1Y3Rp\
b24tcmRzLTA0LTIwMTciKScKICAgICAgdHlwZTogc3RyaW5nCiAgLSBhd3NfYWNjZXNzX2tleToK\
ICAgICAgdGl0bGU6IEFXUyBBY2Nlc3MgS2V5CiAgICAgIGRlc2NyaXB0aW9uOiAnQVdTIEFjY2Vz\
cyBLZXkgdG8gYXV0aGVudGljYXRlIHRvIEFXUyB3aXRoLicKICAgICAgdHlwZTogc3RyaW5nCiAg\
LSBhd3Nfc2VjcmV0X2tleToKICAgICAgdGl0bGU6IEFXUyBTZWNyZXQgS2V5CiAgICAgIGRlc2Ny\
aXB0aW9uOiAnQVdTIFNlY3JldCBLZXkgdG8gYXV0aGVudGljYXRlIHRvIEFXUyB3aXRoLicKICAg\
ICAgdHlwZTogc3RyaW5nCiAgLSByZWdpb246CiAgICAgIHRpdGxlOiBBV1MgUmVnaW9uCiAgICAg\
IGRlc2NyaXB0aW9uOiAnQVdTIFJlZ2lvbiB0byBjcmVhdGUgUkRTIGluc3RhbmNlIGluLicKICAg\
ICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6ICJ1cy13ZXN0LTIiCiAgLSBBcHBsaWNhdGlv\
bk5hbWU6CiAgICAgIHRpdGxlOiBBcHBsaWNhdGlvbiBOYW1lCiAgICAgIGRlc2NyaXB0aW9uOiAn\
UkRTIEFwcGxpY2F0aW9uIG5hbWUgKGUuZy4gIm15c3FsNS43IiknCiAgICAgIHR5cGU6IHN0cmlu\
ZwogICAgICBkZWZhdWx0OiAibXlzcWw1LjciCiAgLSBEQkluc3RhbmNlQ2xhc3M6CiAgICAgIHRp\
dGxlOiBEQiBJbnN0YW5jZSBDbGFzcwogICAgICBkZXNjcmlwdGlvbjogJ1RoZSBjb21wdXRlIGFu\
ZCBtZW1vcnkgY2FwYWNpdHkgb2YgdGhlIERCIGluc3RhbmNlLiAodmFsdWVzOiAiZGIubTQubGFy\
Z2UiLCAiZGIubTQueGxhcmdlIiwgImRiLm00LjJ4bGFyZ2UiLCAiZGIubTQuNHhsYXJnZSIsICJk\
Yi5tNC4xMHhsYXJnZSIsICJkYi5yMy5sYXJnZSIsICJkYi5yMy54bGFyZ2UiLCAiZGIucjMuMnhs\
YXJnZSIsICJkYi5yMy40eGxhcmdlIiwgImRiLnIzLjh4bGFyZ2UiLCAiZGIudDIubGFyZ2UiKScK\
ICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6ICJkYi5yMy4yeGxhcmdlIgogIC0gREJO\
YW1lOgogICAgICB0aXRsZTogREIgTmFtZQogICAgICBkZXNjcmlwdGlvbjogJ1RoZSBuYW1lIG9m\
IHRoZSBkYXRhYmFzZSB0byBjcmVhdGUgd2hlbiB0aGUgREIgaW5zdGFuY2UgaXMgY3JlYXRlZC4g\
KGxldHRlcnMgYW5kIG51bWJlcnMsIG1heCA2NCBjaGFycyknCiAgICAgIHR5cGU6IHN0cmluZwog\
ICAgICBkZWZhdWx0OiAibXlyZHNkYjEiCiAgLSBFbmdpbmVWZXJzaW9uOgogICAgICB0aXRsZTog\
RW5naW5lIFZlcnNpb24KICAgICAgZGVzY3JpcHRpb246ICdUaGUgdmVyc2lvbiBudW1iZXIgb2Yg\
dGhlIGRhdGFiYXNlIGVuZ2luZSB0byB1c2UuICh2YWx1ZXM6ICI1LjcuMTciLCAiNS42LjM1Iiwg\
IjUuNS41NCIpJwogICAgICB0eXBlOiBzdHJpbmcKICAgICAgZGVmYXVsdDogIjUuNy4xNyIKICAt\
IE15c3FsU2VydmVyVGltZXpvbmU6CiAgICAgIHRpdGxlOiBNeVNRTCBTZXJ2ZXIgVGltZXpvbmUK\
ICAgICAgZGVzY3JpcHRpb246ICdUaGUgZGVmYXVsdCB0aW1lem9uZSBmb3IgdGhlIGRhdGFiYXNl\
IGVuZ2luZSB0byB1c2UuICh2YWx1ZXM6ICJVVEMiLCAiVVMvUGFjaWZpYyIsICJVUy9FYXN0ZXJu\
IiwgZXRjLiknCiAgICAgIHR5cGU6IHN0cmluZwogICAgICBkZWZhdWx0OiAiVVRDIgogIC0gVnBj\
SWQ6CiAgICAgIHRpdGxlOiBWUEMgSUQKICAgICAgZGVzY3JpcHRpb246ICdWUEMgSUQgKGUuZy4g\
InZwYy02YzlmMWEwYiIpJwogICAgICB0eXBlOiBzdHJpbmcKICAtIFByZWZlcnJlZEJhY2t1cFdp\
bmRvdzoKICAgICAgdGl0bGU6IFByZWZlcnJlZCBCYWNrdXAgV2luZG93CiAgICAgIGRlc2NyaXB0\
aW9uOiAnVGhlIGRhaWx5IHRpbWUgcmFuZ2UgaW4gVVRDIGR1cmluZyB3aGljaCBhdXRvbWF0ZWQg\
YmFja3VwcyBhcmUgY3JlYXRlZCAoaWYgYXV0b21hdGVkIGJhY2t1cHMgYXJlIGVuYWJsZWQpLiBD\
YW5ub3Qgb3ZlcmxhcCB3aXRoIFByZWZlcnJlZCBNYWludGVuYW5jZSBXaW5kb3cgVGltZSAoZS5n\
LiAiMDA6MDAtMDI6MDAiKScKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6ICIwMDow\
MC0wMjowMCIKICAtIEJhY2t1cFJldGVudGlvblBlcmlvZDoKICAgICAgdGl0bGU6IEJhY2t1cCBS\
ZXRlbnRpb24gUGVyaW9kCiAgICAgIGRlc2NyaXB0aW9uOiAnVGhlIG51bWJlciBvZiBkYXlzIGR1\
cmluZyB3aGljaCBhdXRvbWF0aWMgREIgc25hcHNob3RzIGFyZSByZXRhaW5lZC4gU2V0dGluZyAw\
IGRpc2FibGVzIGF1dG9tYXRpYyBzbmFwc2hvdHMsIG1heGltdW0gdmFsdWUgaXMgMzUuJwogICAg\
ICB0eXBlOiBpbnQKICAgICAgZGVmYXVsdDogMzUKICAtIENvcHlUYWdzVG9TbmFwc2hvdDoKICAg\
ICAgdGl0bGU6IENvcHkgVGFncyBUbyBTbmFwc2hvdHMKICAgICAgZGVzY3JpcHRpb246ICdJbmRp\
Y2F0ZXMgd2hldGhlciB0byBjb3B5IGFsbCBvZiB0aGUgdXNlci1kZWZpbmVkIHRhZ3MgZnJvbSB0\
aGUgREIgaW5zdGFuY2UgdG8gc25hcHNob3RzIG9mIHRoZSBEQiBpbnN0YW5jZS4gKHZhbHVlczog\
InRydWUiLCAiZmFsc2UiKScKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6ICJ0cnVl\
IgogIC0gUG9ydE51bWJlcjoKICAgICAgdGl0bGU6IFBvcnQgTnVtYmVyCiAgICAgIGRlc2NyaXB0\
aW9uOiAnVGhlIHBvcnQgbnVtYmVyIGZvciB0aGUgZGF0YWJhc2Ugc2VydmVyIHRvIGxpc3RlbiBv\
bi4gKHZhbHVlcyBpbiByYW5nZSAxMTUwLTY1NTM1KScKICAgICAgdHlwZTogaW50CiAgICAgIGRl\
ZmF1bHQ6IDEwMDAxCiAgLSBQdWJsaWNseUFjY2Vzc2libGU6CiAgICAgIHRpdGxlOiBQdWJsaWNs\
eSBBY2Nlc3NpYmxlCiAgICAgIGRlc2NyaXB0aW9uOiAnSW5kaWNhdGVzIHdoZXRoZXIgdGhlIERC\
IGluc3RhbmNlIGlzIGFuIEludGVybmV0LWZhY2luZyBpbnN0YW5jZS4gKHZhbHVlczogInRydWUi\
LCAiZmFsc2UiKScKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6ICJmYWxzZSIKICAt\
IFByZWZlcnJlZE1haW50ZW5hbmNlV2luZG93RGF5OgogICAgICB0aXRsZTogRGF5IG9mIFByZWZl\
cnJlZCBNYWludGVuYW5jZSBXaW5kb3cKICAgICAgZGVzY3JpcHRpb246ICdUaGUgZGF5IG9mIHRo\
ZSB3ZWVrIHdoaWNoIFJEUyBtYWludGVuYW5jZSB3aWxsIGJlIHBlcmZvcm1lZCAoZS5nLiAiTW9u\
IiknCiAgICAgIHR5cGU6IHN0cmluZwogICAgICBkZWZhdWx0OiAiTW9uIgogIC0gUHJlZmVycmVk\
TWFpbnRlbmFuY2VXaW5kb3dTdGFydFRpbWU6CiAgICAgIHRpdGxlOiBQcmVmZXJyZWQgTWFpbnRl\
bmFuY2UgV2luZG93IFN0YXJ0IFRpbWUKICAgICAgZGVzY3JpcHRpb246ICdUaGUgd2Vla2x5IHN0\
YXJ0IHRpbWUgaW4gVVRDIGZvciB0aGUgUkRTIG1haW50ZW5hbmNlIHdpbmRvdywgbXVzdCBiZSBs\
ZXNzIHRoYW4gUHJlZmVycmVkIE1haW50ZW5hbmNlIFdpbmRvdyBFbmQgVGltZSBhbmQgY2Fubm90\
IG92ZXJsYXAgd2l0aCBQcmVmZXJyZWQgQmFja3VwIFdpbmRvdyAoZS5nLiAiMDQ6MDAiKScKICAg\
ICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6ICIwNDowMCIKICAtIFByZWZlcnJlZE1haW50\
ZW5hbmNlV2luZG93RW5kVGltZToKICAgICAgdGl0bGU6IFByZWZlcnJlZCBNYWludGVuYW5jZSBX\
aW5kb3cgRW5kIFRpbWUKICAgICAgZGVzY3JpcHRpb246ICdUaGUgd2Vla2x5IGVuZCB0aW1lIGlu\
IFVUQyBmb3IgdGhlIFJEUyBtYWludGVuYW5jZSB3aW5kb3csIG11c3QgYmUgbGVzcyB0aGFuIFBy\
ZWZlcnJlZCBNYWludGVuYW5jZSBXaW5kb3cgRW5kIFRpbWUgYW5kIGNhbm5vdCBvdmVybGFwIHdp\
dGggUHJlZmVycmVkIEJhY2t1cCBXaW5kb3cgKGUuZy4gIjA0OjAwIiknCiAgICAgIHR5cGU6IHN0\
cmluZwogICAgICBkZWZhdWx0OiAiMDY6MDAiCiAgLSBNb25pdG9yaW5nSW50ZXJ2YWw6CiAgICAg\
IHRpdGxlOiBNb25pdG9yaW5nIEludGVydmFsCiAgICAgIGRlc2NyaXB0aW9uOiAnVGhlIGludGVy\
dmFsLCBpbiBzZWNvbmRzLCBiZXR3ZWVuIHBvaW50cyB3aGVuIEVuaGFuY2VkIE1vbml0b3Jpbmcg\
bWV0cmljcyBhcmUgY29sbGVjdGVkIGZvciB0aGUgREIgaW5zdGFuY2UuIChWYWx1ZXM6IDEsIDUs\
IDEwLCAxNSwgMzAsIDYwKScKICAgICAgdHlwZTogaW50CiAgICAgIGRlZmF1bHQ6IDEKICAtIE11\
bHRpQVo6CiAgICAgIHRpdGxlOiBNdWx0aSBBWgogICAgICBkZXNjcmlwdGlvbjogJ1NwZWNpZmll\
cyBpZiB0aGUgZGF0YWJhc2UgaW5zdGFuY2UgaXMgYSBtdWx0aXBsZSBBdmFpbGFiaWxpdHkgWm9u\
ZSBkZXBsb3ltZW50LiAodmFsdWVzOiAidHJ1ZSIsICJmYWxzZSIpJwogICAgICB0eXBlOiBzdHJp\
bmcKICAgICAgZGVmYXVsdDogInRydWUiCiAgLSBOdW1iZXJPZkF2YWlsYWJpbGl0eVpvbmVzOgog\
ICAgICB0aXRsZTogTnVtYmVyIG9mIEF2YWlsYWJpbGl0eSBab25lcwogICAgICBkZXNjcmlwdGlv\
bjogJ1F1YW50aXR5IG9mIHN1Ym5ldHMgdG8gdXNlLCBpZiBzZWxlY3RpbmcgbW9yZSB0aGFuIDIg\
dGhlIHJlZ2lvbiB0aGlzIHN0YWNrIGlzIGluIG11c3QgaGF2ZSBhdCBsZWFzdCB0aGF0IG1hbnkg\
QXZhaWxhYmlsaXR5IFpvbmVzJwogICAgICB0eXBlOiBpbnQKICAgICAgZGVmYXVsdDogMwogIC0g\
QXZhaWxhYmlsaXR5Wm9uZXM6CiAgICAgIHRpdGxlOiBBdmFpbGFiaWxpdHkgWm9uZXMKICAgICAg\
ZGVzY3JpcHRpb246ICdDb21tYSBzZXBhcmF0ZWQgbGlzdCBvZiBhdmFpbGFiaWxpdHkgem9uZXMg\
dG8gdXNlLCBtdXN0IGJlIHRoZSBzYW1lIHF1YW50aXR5IGFzIHNwZWNpZmllZCBpbiBOdW1iZXIg\
b2YgQXZhaWxhYmlsaXR5IFpvbmVzIChlLmcuICJ1cy13ZXN0LTJhLHVzLXdlc3QtMmIsdXMtd2Vz\
dC0yYyIpJwogICAgICB0eXBlOiBzdHJpbmcKICAgICAgZGVmYXVsdDogInVzLXdlc3QtMmEsdXMt\
d2VzdC0yYix1cy13ZXN0LTJjIgogIC0gQ2lkckJsb2NrczoKICAgICAgdGl0bGU6IENJRFIgQmxv\
Y2tzCiAgICAgIGRlc2NyaXB0aW9uOiAnQ29tbWEgc2VwZXJhdGVkIGxpc3Qgb2YgQ0lEUiBibG9j\
a3MgdG8gcGxhY2UgUkRTIGludG8sIG11c3QgYmUgdGhlIHNhbWUgcXVhbnRpdHkgYXMgc3BlY2lm\
aWVkIGluIE51bWJlciBvZiBBdmFpbGFiaWxpdHkgWm9uZXMgKGUuZy4gIjEwLjAuOTYuMC8yMCwx\
MC4wLjExMi4wLzIwLDEwLjAuMTI4LjAvMjAiKScKICAgICAgdHlwZTogc3RyaW5nCiAgLSBBY2Nl\
c3NDaWRyOgogICAgICB0aXRsZTogQWNjZXNzIENJRFIKICAgICAgZGVzY3JpcHRpb246ICdDSURS\
IGJsb2NrIHRvIGFsbG93IHRvIGNvbm5lY3QgdG8gZGF0YWJhc2UgKGUuZy4gIjEwLjAuMC4wLzE2\
IiknCiAgICAgIHR5cGU6IHN0cmluZwogIC0gQWxsb2NhdGVkU3RvcmFnZUFuZElvcHM6CiAgICAg\
IHRpdGxlOiBBbGxvY2F0ZWQgU3RvcmFnZSBhbmQgSU9QUwogICAgICBkZXNjcmlwdGlvbjogJ1N0\
b3JhZ2UvSU9QUyB0byBhbGxvY2F0ZSAoZS5nLiAiMTAwIEdCIC8gMSwwMDAgSU9QUyIsICIzMDAg\
R0IgLyAzLDAwMCBJT1BTIiwgLi4uLCAiNiwwMDAgR0IgLyA2MCwwMDAgSU9QUyIpJwogICAgICB0\
eXBlOiBzdHJpbmcKICAgICAgZGVmYXVsdDogIjEwMCBHQiAvIDEsMDAwIElPUFMiCiAgLSBNYXN0\
ZXJVc2VybmFtZToKICAgICAgdGl0bGU6IE1hc3RlciBVc2VyIE5hbWUKICAgICAgZGVzY3JpcHRp\
b246ICdNYXN0ZXIgZGF0YWJhc2UgVXNlcm5hbWUnCiAgICAgIHR5cGU6IHN0cmluZwogICAgICBk\
ZWZhdWx0OiBzcWxzYQogIC0gTWFzdGVyVXNlclBhc3N3b3JkOgogICAgICB0aXRsZTogTWFzdGVy\
IFVzZXIgUGFzc3dvcmQKICAgICAgZGVzY3JpcHRpb246ICdNYXN0ZXIgdXNlciBkYXRhYmFzZSBQ\
YXNzd29yZCcKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6IHNxbHNhMTIzCiAgLSBB\
bGxvd01ham9yVmVyc2lvblVwZ3JhZGU6CiAgICAgIHRpdGxlOiBBbGxvdyBNYWpvciBWZXJzaW9u\
IFVwZ3JhZGUKICAgICAgZGVzY3JpcHRpb246ICdJZiB5b3UgdXBkYXRlIHRoZSBFbmdpbmUgVmVy\
c2lvbiBwcm9wZXJ0eSB0byBhIHZlcnNpb24gdGhhdCcncyBkaWZmZXJlbnQgZnJvbSB0aGUgREIg\
aW5zdGFuY2UnJ3MgY3VycmVudCBtYWpvciB2ZXJzaW9uLCBzZXQgdGhpcyBwcm9wZXJ0eSB0byB0\
cnVlLiAodmFsdWVzOiAidHJ1ZSIsICJmYWxzZSIpJwogICAgICB0eXBlOiBzdHJpbmcKICAgICAg\
ZGVmYXVsdDogInRydWUiCiAgLSBBdXRvTWlub3JWZXJzaW9uVXBncmFkZToKICAgICAgdGl0bGU6\
IEFsbG93IE1pbm9yIFZlcnNpb24gVXBncmFkZQogICAgICBkZXNjcmlwdGlvbjogJ0luZGljYXRl\
cyB0aGF0IG1pbm9yIGVuZ2luZSB1cGdyYWRlcyBhcmUgYXBwbGllZCBhdXRvbWF0aWNhbGx5IHRv\
IHRoZSBEQiBpbnN0YW5jZSBkdXJpbmcgdGhlIG1haW50ZW5hbmNlIHdpbmRvdy4gKHZhbHVlczog\
InRydWUiLCAiZmFsc2UiKScKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6ICJ0cnVl\
IgogIC0gU3RvcmFnZUVuY3J5cHRlZDoKICAgICAgdGl0bGU6IFN0b3JhZ2UgRW5jcnlwdGVkCiAg\
ICAgIGRlc2NyaXB0aW9uOiAnSW5kaWNhdGVzIHdoZXRoZXIgdGhlIERCIGluc3RhbmNlIGlzIGVu\
Y3J5cHRlZC4gKHZhbHVlczogInRydWUiLCAiZmFsc2UiKScKICAgICAgdHlwZTogc3RyaW5nCiAg\
ICAgIGRlZmF1bHQ6ICJ0cnVlIgogIC0gU3RvcmFnZVR5cGU6CiAgICAgIHRpdGxlOiBTdG9yYWdl\
IFR5cGUKICAgICAgZGVzY3JpcHRpb246ICdTcGVjaWZpZXMgdGhlIHN0b3JhZ2UgdHlwZSB0byBi\
ZSBhc3NvY2lhdGVkIHdpdGggdGhlIERCIGluc3RhbmNlLiAodmFsdWVzOiAiaW8xIiwgImdwMiIs\
ICJzdGFuZGFyZCIpJwogICAgICB0eXBlOiBzdHJpbmcKICAgICAgZGVmYXVsdDogaW8xCnJlcXVp\
cmVkOgogIC0gc3RhY2tfaWRlbnRpZmllcgogIC0gYXdzX2FjY2Vzc19rZXkKICAtIGF3c19zZWNy\
ZXRfa2V5CiAgLSByZWdpb24KICAtIEFwcGxpY2F0aW9uTmFtZQogIC0gVnBjSWQKICAtIE51bWJl\
ck9mQXZhaWxhYmlsaXR5Wm9uZXMKICAtIFByZWZlcnJlZEJhY2t1cFdpbmRvdwogIC0gUHJlZmVy\
cmVkTWFpbnRlbmFuY2VXaW5kb3dEYXkKICAtIFByZWZlcnJlZE1haW50ZW5hbmNlV2luZG93U3Rh\
cnRUaW1lCiAgLSBQcmVmZXJyZWRNYWludGVuYW5jZVdpbmRvd0VuZFRpbWUKICAtIE1vbml0b3Jp\
bmdJbnRlcnZhbAogIC0gQXZhaWxhYmlsaXR5Wm9uZXMKICAtIENpZHJCbG9ja3MKICAtIEFjY2Vz\
c0NpZHIKICAtIEFsbG9jYXRlZFN0b3JhZ2VBbmRJb3BzCiAgLSBNYXN0ZXJVc2VybmFtZQogIC0g\
TWFzdGVyVXNlclBhc3N3b3JkCiAgLSBBbGxvd01ham9yVmVyc2lvblVwZ3JhZGUKICAtIFN0b3Jh\
Z2VUeXBlCiAgLSBNdWx0aUFaCiAgLSBBdXRvTWlub3JWZXJzaW9uVXBncmFkZQogIC0gU3RvcmFn\
ZUVuY3J5cHRlZAogIC0gQmFja3VwUmV0ZW50aW9uUGVyaW9kCiAgLSBQb3J0TnVtYmVyCiAgLSBD\
b3B5VGFnc1RvU25hcHNob3QKICAtIFB1YmxpY2x5QWNjZXNzaWJsZQogIC0gREJJbnN0YW5jZUNs\
YXNzCiAgLSBEQk5hbWUKICAtIEVuZ2luZVZlcnNpb24KICAtIE15c3FsU2VydmVyVGltZXpvbmUK\
bWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6ICJBbWF6b24gUkRTIgogIGxvbmdEZXNjcmlwdGlvbjog\
IkFtYXpvbiBSZWxhdGlvbmFsIERhdGFiYXNlIFNlcnZpY2UgKEFtYXpvbiBSRFMpIG1ha2VzIGl0\
IGVhc3kgdG8gc2V0IHVwLCBvcGVyYXRlLCBhbmQgc2NhbGUgYSByZWxhdGlvbmFsIGRhdGFiYXNl\
IGluIHRoZSBjbG91ZC4gSXQgcHJvdmlkZXMgY29zdC1lZmZpY2llbnQgYW5kIHJlc2l6YWJsZSBj\
YXBhY2l0eSB3aGlsZSBtYW5hZ2luZyB0aW1lLWNvbnN1bWluZyBkYXRhYmFzZSBhZG1pbmlzdHJh\
dGlvbiB0YXNrcywgZnJlZWluZyB5b3UgdXAgdG8gZm9jdXMgb24geW91ciBhcHBsaWNhdGlvbnMg\
YW5kIGJ1c2luZXNzLiBBbWF6b24gUkRTIHByb3ZpZGVzIHlvdSBzaXggZmFtaWxpYXIgZGF0YWJh\
c2UgZW5naW5lcyB0byBjaG9vc2UgZnJvbSwgaW5jbHVkaW5nIEFtYXpvbiBBdXJvcmEsIFBvc3Rn\
cmVTUUwsIE15U1FMLCBNYXJpYURCLCBPcmFjbGUsIGFuZCBNaWNyb3NvZnQgU1FMIFNlcnZlci4i\
CiAgaW1hZ2VVcmw6ICJodHRwczovL2QwLmF3c3N0YXRpYy5jb20vY2xvdWQtc3RvcmFnZS9EZWNr\
X0RhdGFiYXNlcy5wbmciCiAgZG9jdW1lbnRhdGlvblVybDogImh0dHBzOi8vYXdzLmFtYXpvbi5j\
b20vcmRzLyIK"

USER apb
