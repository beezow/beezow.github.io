import requests

test_url = 'http://localhost:8000'
wctual_url = 'https://windbornesystems.com/career_applications.json'
url = test_url

json = {
  "career_application": {
    "name": "Andrew Zoghby",
    "email": "dzoghby4@gmail.com",
    "role": "Firmware Engineer",
    "notes": "Unfortunately most my relevant work was not able to be open sourced (Rivos planned to open source everything, but Meta acquisition prevented this).  My most substantial open sourced work was porting a microkernel and its associated debugger from ARM to RiscV, this is what is linked in the `portfolio_url`.  You can find other projects from school and hackathons on my github.",
    "submission_url": "https://github.com/beezow/beezow.github.io/blob/windborne_app/windborne_firmware_wizard/windborne.pdf",
    "portfolio_url": "https://github.com/rivosinc/humility",
    "resume_url": "zoghby.net",
  }
}

print(f"Result: {requests.post(url, json=json)}")
