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
- How many responses each year? 600?
- How many mailed surveys per year?
- Is there an existing data dictionary?
- Can people get the mail and email survey?
- What are the HCAHPS survey question domains?
- Do we know how people were admitted (ambulance, ER walk-in, scheduled) and readmitted?

### Future Questions

- None :)