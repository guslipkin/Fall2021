# 20211013 Meeting Notes

## Research

### Questions

- Does response change based on time it takes for a patient to submit their survey?

- Are there key factors that lead to readmission that can be identified from connect calls and patient surveys?
- **Is there correlation in how call survey was answered and readmission? For readmitted patients, how long for follow-up phonecall and when were they readmitted? Could a faster follow-up reduce readmission?**
- HCAHPS vs Connect, medicine details follow-up questions. HCAHPS is in-house and Connect is discharge, are people answering differently?
- Do HCAHPS {16,17}{21,22} reflect readmission rates?
- Does admittance type (ambulance, ER walk-in, scheduled) have an effect on readmission?
- Is there a correlation with age, race, education, language, or other demographics?
- Is there a correlation in discharge unit and readmission rates and scores?
- COVID vs non-COVID times?

### Thoughts

- Use PCA on the Connect calls to account for non-yes or no answers
  - Maybe clustering?
- Sentiment analysis for the qualitative data (followup phone calls if Connect is flagged)
- Distinction between response not needed and response not given

## Data

### In Progress

- Filling out data user agreement
- Cleaning data for general use
  - Will still have primary keys
- Expect followup in a week or so

## Paper handouts

### What is HCAHPS?

- National survey used by the government
- Drives: reimbursement, overall score, funding
- Reportable vs non-reportable surveys
  - Reportable:
    - Anonymous
    - Reported to Center for Medicare and Medicaid Services (CMS)
      - 300 surveys required by CMS per year
        - ~600 respnoses per year at TMH
    - Mailed to the patient
    - Totally separate from non-reportable
    - Only 33% of patients receive reportables
      - Totally randomized
      - Done by 3rd party
    - Both surveys are identical
- National response rate is 24% of surveyed
  - TMH is at 19%
- These are scored on “top box” –> only “always” counts
- Timeline:
  - Discharged
  - <= 48 hours of discharge survey is sent
    - Patient receives between 48 hours and 6 weeks
  - Automated discharge calls are within 24 hours and start at 11am
- Mapped from discharge location, not necessarily each unit visited

### Data Sources

- Discharge phonecall
- Connect call
  - Everyone gets all the questions
  - Follow-up calls based on flags are not triaged, oldest first
    - Priority given to clinical over service
- Patient experience survey (33% mail, 66% email)
- Approximately how many patients worth of data is there?
  - 1500 responses July 2020-2021 for HCAHPS

## Data Strategy

- Work backwards
  - Start with readmitted
  - Figure out why readmitted
  - Forecast for future patients

## Follow-up

### Actions

- Jessica
  - Find “the box”
  - Send equivalent questions

### Current Questions

- How is the 33% determined by the 3rd party?
  - Every third discharge? $\frac{1}{3}$ chance at discharge? etc.
  - *Waiting to hear back from Press Ganey (3rd party)*
  
- How many responses each year? 600?

  - *Our response rate as a  facility is at a 20.49% for mailed surveys (national average is 24.7%)  giving us approximately 1664 official reponses. Response rate for emailed surveys (non-reportable) is 12.38% giving us  approximately 339 responses.*

- How many mailed surveys per year?

  - *From 9/1/2020-8/31/2021 we mailed (official reportable surveys) 8124 surveys. We emailed 2738.*

- Is there an existing data dictionary?

- Can people get the mail and email survey?

  - *Waiting to hear back from Press Ganey.*

- What are the HCAHPS survey question domains?

  - *Blue is the domain. White are the questions associated with the domain.*

  > - Communication with Nurses Score
  >   -  During this hospital stay nurses always treated you with courtesy and respect?
  >   - During this hospital stay nurses always listened carefully to you?
  >   - During this hospital stay nurses always explained things in a way you could understand?
  > - Communication with Doctors Score
  >   - During this hospital stay doctors always treated you with courtesy and respect?
  >   - During this hospital stay doctors always listened carefully to you?
  >   - During this hospital stay doctors always explained things in a way you could understand?
  > - Staff Responsiveness Score
  >   - You always got help in getting to the bathroom or in using a bedpan as soon as you wanted.
  >   - During this hospital stay after you pressed the call button you  always got help as soon as you wanted it
  > - Room Environment Score
  >   - Your room and bathroom was always kept clean?
  >   - During this hospital stay the area around your room was always quiet at night?
  > - Communication about Medicines Score
  >   - Before giving you any new medicine hospital staff always  described possible side effects in a way you could understand?
  >   - Before giving you any new medicine hospital staff always tell you what the medicine was for?
  > - Discharge Communication Score
  >   - During your hospital stay did hospital staff talk with you about whether you would have the help you needed when you left the hospital? (y/n)
  >   - During your hospital stay did you get information in writing about what symptoms or health problems to look out for after you left the hospital? (y/n)
  > - Care Transition Score
  >   - During this hospital stay I strongly agree they took my preferences and those of my family or caregiver into account in deciding what my health care needs would be when I left.
  >   - During this hospital stay I strongly agree I had a good understanding of the things I was responsible for in managing my health.
  >   - When I left the hospital I strongly agree I clearly understood the purpose for taking each of my medications.
  > - Rate this hospital a 9 or 10

- Do we know how people were admitted (ambulance, ER walk-in, scheduled) and readmitted?

  - *Yes we have this data. I will be sure to have that available in the data for analysis.*

### Future Questions

- None :)