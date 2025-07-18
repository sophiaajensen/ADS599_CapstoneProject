
/*
The syntax below is provided as-is to facilitate the importing 
and labeling of the 2019 FEVS Public Release Data File.

Users will need to provide the file path of the unzipped CSV file 
in the infile statement of the first data step below.
Example: infile 'C:\data\fevs_2019prdf.csv'

Program updated April 28, 2020 to include government shutdown items.
*/

libname data 'C:\data';

data temp;
  length	AGENCY $2
			LEVEL1 $4 
			DSEX DEDUC DFEDTEN DSUPER DMINORITY DLEAVING $1 
			Q1-Q71 $1 
			Q73 Q74 Q75_1 Q75_2 Q75_3 Q75_4 Q75_5 Q75_6 Q75_7 Q75_8 Q75_9 Q75_10 Q76 Q77 $1
			RANDOM $12;
  infile '\FEVS_2019_PRDF_Revised_2020-04-27.csv' missover dsd dlm=',' firstobs=2;
  input AGENCY LEVEL1 DSEX DEDUC DFEDTEN DSUPER DMINORITY DLEAVING Q1-Q71 
		Q73 Q74 Q75_1 Q75_2 Q75_3 Q75_4 Q75_5 Q75_6 Q75_7 Q75_8 Q75_9 Q75_10 Q76 Q77 
		POSTWT RANDOM;
run;




proc format;
value $AGENCY
"AF" = "United States Department of the Air Force"
"AG" = "Department of Agriculture"
"AM" = "U.S. Agency for International Development"
"AR" = "United States Department of the Army"
"BG" = "Pension Benefit Guaranty Corporation"
"BO" = "Office of Management and Budget"
"CM" = "Department of Commerce"
"CT" = "Commodity Futures Trading Commission"
"CU" = "National Credit Union Administration"
"DD" = "OSD, Joint Staff, Defense Agencies, and Field Activities"
"DJ" = "Department of Justice"
"DL" = "Department of Labor"
"DN" = "Department of Energy"
"DR" = "Federal Energy Regulatory Commission"
"ED" = "Department of Education"
"EE" = "Equal Employment Opportunity Commission"
"EP" = "Environmental Protection Agency"
"FC" = "Federal Communications Commission"
"FQ" = "Court Services and Offender Supervision Agency"
"FT" = "Federal Trade Commission"
"GS" = "General Services Administration"
"HE" = "Department of Health and Human Services"
"HF" = "Federal Housing Finance Agency"
"HS" = "Department of Homeland Security"
"HU" = "Department of Housing and Urban Development"
"IB" = "U.S. Agency for Global Media"
"IN" = "Department of the Interior"
"NF" = "National Science Foundation"
"NL" = "National Labor Relations Board"
"NN" = "National Aeronautics and Space Administration"
"NQ" = "National Archives and Records Administration"
"NU" = "Nuclear Regulatory Commission"
"NV" = "United States Department of the Navy"
"OM" = "Office of Personnel Management"
"RR" = "Railroad Retirement Board"
"SB" = "Small Business Administration"
"SE" = "Securities and Exchange Commission"
"SK" = "Consumer Product Safety Commission"
"SN" = "National Gallery of Art"
"ST" = "Department of State"
"SZ" = "Social Security Administration"
"TC" = "U.S. International Trade Commission"
"TD" = "Department of Transportation"
"TR" = "Department of the Treasury"
"XX" = "All Other Agencies"
;
value $LEVEL1_
"AF0J" = "AET - AIR EDUCATION & TRAINING COMMAND"
"AF0M" = "AFR - HQ AIR FORCE RESERVE COMMAND"
"AF0R" = "PAF - PACIFIC AIR FORCES"
"AF0V" = "SOC - AIR FORCE SPECIAL OPERATIONS COMMAND"
"AF17" = "IMS - AF INSTALLATION AND MISSION SUPPORT"
"AF1C" = "ACC - AIR COMBAT COMMAND"
"AF1L" = "AMC - AIR MOBILITY COMMAND"
"AF1M" = "MTC - AIR FORCE MATERIEL COMMAND"
"AF1S" = "SPC - HQ AIR FORCE SPACE COMMAND"
"AF3Q" = "SAJ - AFELM US STRATEGIC COMMAND"
"AFGS" = "GBS - GLOBAL STRIKE COMMAND"
"AFZB" = "AHQ - HQ USAF AND SUPPORT ELEMENTS"
"AFZG" = "CCT - AIR FORCE CIVILIAN CAREER TRAINING"
"AFZZ" = "United States Department of the Air Force, All Other"
"AG04" = "Food Safety"
"AG05" = "Natural Resources and Environment"
"AG07" = "Food Nutrition and Consumer Services"
"AG09" = "Rural Development (Agencies 07, 15, & 32)"
"AG10" = "Research, Education, and Economics"
"AG14" = "Marketing and Regulatory Programs"
"AG15" = "Departmental Administration - ASA"
"AG27" = "Headquarters Agencies"
"AG29" = "Farm Production and Conservation"
"AGZZ" = "Department of Agriculture, All Other"
"AM01" = "Washington"
"AM02" = "Overseas"
"AMZZ" = "U.S. Agency for International Development, All Other"
"AR2A" = "Army Cyber Command"
"ARAE" = "US Army Acquisition Support Center"
"ARAP" = "Military Entrance Processing Command"
"ARAT" = "Army Test & Evaluation Command"
"ARCE" = "U.S. Army Corps of Engineers"
"ARE0" = "Army Europe and Seventh Army"
"ARFC" = "Army Forces Command"
"ARFU" = "Army Futures Command"
"ARHQ" = "Headquarters, Department of the Army"
"ARHR" = "Army Reserve Command"
"ARJA" = "Joint Activities"
"ARK0" = "Army Civilian Human Resources Agency"
"ARMC" = "Army Medical Command"
"ARP1" = "Army Pacific"
"ARQ0" = "Army Human Resources Command"
"ARSP" = "Army Special Operations Command"
"ARTC" = "Army Training and Doctrine Command"
"ARX0" = "Army Materiel Command"
"ARZZ" = "United States Department of the Army, All Other"
"BGZZ" = "Pension Benefit Guaranty Corporation, All Other"
"BOZZ" = "Office of Management and Budget, All Other"
"CM03" = "Census Bureau"
"CM06" = "International Trade Administration"
"CM08" = "National Institute of Standards and Technology"
"CM09" = "National Oceanic and Atmospheric Administration"
"CM14" = "U.S. Patent & Trademark Office"
"CMZZ" = "Department of Commerce, All Other"
"CTZZ" = "Commodity Futures Trading Commission, All Other"
"CUZZ" = "National Credit Union Administration, All Other"
"DD01" = "Washington Headquarters Services"
"DD04" = "Defense Information Systems Agency"
"DD07" = "Defense Logistics Agency"
"DD10" = "Defense Contract Audit Agency"
"DD12" = "Defense Security Service"
"DD16" = "Department of Defense Education Activity"
"DD26" = "Office of the Inspector General"
"DD27" = "Missile Defense Agency"
"DD34" = "Defense Commissary Agency"
"DD35" = "Defense Finance and Accounting Service"
"DD48" = "Defense Human Resources Activity"
"DD60" = "Defense Health Agency"
"DD61" = "Defense Threat Reduction Agency"
"DD63" = "Defense Contract Management Agency"
"DDZZ" = "OSD, Joint Staff, Defense Agencies, and Field Activities, All Other"
"DJAT" = "Bureau of Alcohol, Tobacco, Firearms, and Explosives"
"DJBP" = "Bureau of Prisons"
"DJCM" = "Criminal Division"
"DJCV" = "Civil Division"
"DJEA" = "Drug Enforcement Administration"
"DJEN" = "Environment and Natural Resources Division"
"DJFB" = "Federal Bureau of Investigation"
"DJIR" = "Executive Office for Immigration Review"
"DJMS" = "U.S. Marshals Service"
"DJOA" = "Office of the U.S. Attorneys"
"DJTP" = "U.S. Trustee Program"
"DJZZ" = "Department of Justice, All Other"
"DL03" = "Bureau of Labor Statistics"
"DL04" = "Mine Safety and Health Administration"
"DL05" = "Employee Benefits Security Administration"
"DL06" = "Occupational Safety and Health Administration"
"DL09" = "Office of Workers' Compensation Programs"
"DL10" = "Wage & Hour Division"
"DL11" = "Office of the Solicitor"
"DLZZ" = "Department of Labor, All Other"
"DN13" = "Under Secretary For Nuclear Security"
"DN14" = "Power Marketing Administrations"
"DN15" = "Office Of The Secretary And Departmental Offices"
"DN16" = "Office Of The Under Secretary OF Energy"
"DN17" = "Office Of The Under Secretary For Science"
"DNZZ" = "Department of Energy, All Other"
"DRZZ" = "Federal Energy Regulatory Commission, All Other"
"ED12" = "FEDERAL STUDENT AID"
"EDZZ" = "Department of Education, All Other"
"EE01" = "HEADQUARTERS"
"EE02" = "FIELD"
"EP02" = "Office of Air & Radiation"
"EP05" = "Office of Chemical Safety & Pollution Prevention"
"EP06" = "Office of Enforcement & Compliance Assistance"
"EP11" = "Office of Research & Development"
"EP13" = "Office of Water"
"EP15" = "Region 2"
"EP16" = "Region 3"
"EP17" = "Region 4"
"EP18" = "Region 5"
"EP19" = "Region 6"
"EP20" = "Region 7"
"EP22" = "Region 9"
"EP23" = "Region 10"
"EP24" = "Office of Mission Support"
"EPZZ" = "Environmental Protection Agency, All Other"
"FCZZ" = "Federal Communications Commission, All Other"
"FQ01" = "Community Supervision Program"
"FQZZ" = "Court Services and Offender Supervision Agency, All Other"
"FTZZ" = "Federal Trade Commission, All Other"
"GS01" = "Office of the Commissioner (FAS - Q)"
"GS02" = "PBS / Office of the Commissioner (PBS - P)"
"GSZZ" = "General Services Administration, All Other"
"HE02" = "Administration for Children and Family"
"HE04" = "Centers for Disease Control & Prevention"
"HE05" = "Centers for Medicare and Medicaid Services"
"HE06" = "Food and Drug Administration"
"HE07" = "Health Resources and Services Administration"
"HE08" = "Indian Health Service"
"HE09" = "National Institutes of Health"
"HE10" = "Office of the Secretary"
"HE12" = "Office of the Inspector General"
"HEZZ" = "Department of Health and Human Services, All Other"
"HFZZ" = "Federal Housing Finance Agency, All Other"
"HS01" = "Citizen and Immigration Services (CIS)"
"HS02" = "U.S. Customs and Border Protection (CBP)"
"HS03" = "United States Coast Guard (USCG)"
"HS04" = "Federal Emergency Management Agency (FEMA)"
"HS05" = "Federal Law Enforcement Training Center (FLETC)"
"HS06" = "Immigration and Customs Enforcement (ICE)"
"HS09" = "Under Secretary for Management"
"HS12" = "U.S. Secret Service (USSS)"
"HS14" = "Transportation Security Administration (TSA)"
"HSCI" = "Cybersecurity and Infrastructure Security Agency (CISA)"
"HSZZ" = "Department of Homeland Security, All Other"
"HU16" = "Assistant Secretary for Housing - FHA"
"HU19" = "Assistant Secretary for Public & Indian Housing"
"HUZZ" = "Department of Housing and Urban Development, All Other"
"IB04" = "VOICE OF AMERICA"
"IBZZ" = "Broadcasting Board of Governors, All Other"
"IN01" = "Bureau of Land Management"
"IN02" = "Bureau of Reclamation"
"IN03" = "Bureau of Indian Affairs"
"IN05" = "United States Geological Survey"
"IN06" = "National Park Service"
"IN07" = "Fish and Wildlife Service"
"IN14" = "Office of the Secretary of the Interior"
"IN15" = "Bureau of Safety and Environmental Enforcement"
"IN16" = "Bureau of Ocean Energy Management"
"INZZ" = "Department of the Interior, All Other"
"NFZZ" = "National Science Foundation, All Other"
"NL10" = "Office of the General Counsel Staff"
"NLZZ" = "National Labor Relations Board, All Other"
"NN10" = "Headquarters NASA"
"NN21" = "Ames Research Center"
"NN22" = "John Glenn Research Center at Lewis Field"
"NN23" = "Langley Research Center"
"NN51" = "Goddard Space Flight Center"
"NN62" = "George C. Marshall Space Flight Center"
"NN72" = "Lyndon B. Johnson Space Center"
"NN76" = "John F. Kennedy Space Center"
"NNZZ" = "National Aeronautics and Space Administration, All Other"
"NQ01" = "AGENCY SERVICES"
"NQ09" = "RESEARCH SERVICES"
"NQZZ" = "National Archives and Records Administration, All Other"
"NU04" = "Office of Nuclear Reactor Regulation"
"NUZZ" = "Nuclear Regulatory Commission, All Other"
"NV12" = "DON, ASSISTANT FOR ADMINISTRATION"
"NV14" = "OFFICE OF NAVAL RESEARCH"
"NV18" = "BUREAU OF MEDICINE AND SURGERY"
"NV19" = "NAVAL AIR SYSTEMS COMMAND"
"NV22" = "CHIEF OF BUREAU OF NAVAL PERSONNEL"
"NV23" = "NAVAL SUPPLY SYSTEMS COMMAND"
"NV24" = "NAVAL SEA SYSTEMS COMMAND"
"NV25" = "NAVAL FACILITIES ENGINEERING COMMAND"
"NV27" = "U.S. Marine Corps"
"NV39" = "SPACE AND NAVAL WARFARE SYSTEMS COMMAND"
"NV52" = "COMMANDER, NAVY INSTALLATIONS"
"NV60" = "U.S. FLEET FORCES COMMAND"
"NV70" = "U.S. PACIFIC FLEET COMMAND"
"NV74" = "NAVAL SPECIAL WARFARE COMMAND"
"NV76" = "NAVAL EDUCATION AND TRAINING COMMAND"
"NVZZ" = "United States Department of the Navy, All Other"
"OM17" = "Retirement Services"
"OM24" = "National Background Investigations Bureau"
"OMZZ" = "Office of Personnel Management, All Other"
"RRZZ" = "Railroad Retirement Board, All Other"
"SBZZ" = "Small Business Administration, All Other"
"SE21" = "National Examination Program"
"SE22" = "National Enforcement Program"
"SEZZ" = "Securities and Exchange Commission, All Other"
"SKZZ" = "Consumer Product Safety Commission, All Other"
"SNZZ" = "National Gallery of Art, All Other"
"ST11" = "BUREAU OF AFRICAN AFFAIRS"
"ST14" = "BUREAU OF CONSULAR AFFAIRS"
"ST20" = "BUREAU OF DIPLOMATIC SECURITY"
"ST22" = "BUREAU OF EAST ASIAN AND PACIFIC AFFAIRS"
"ST26" = "BUREAU OF EUROPEAN AND EURASIAN AFFAIRS"
"ST42" = "BUREAU NEAR EASTERN AFFAIRS"
"ST50" = "BUREAU OF SOUTH AND CENTRAL ASIAN AFFAIRS"
"ST52" = "BUREAU OF WESTERN HEMISPHERE AFFAIRS"
"STZZ" = "Department of State, All Other"
"SZ02" = "Deputy Commissioner for Operations"
"SZ03" = "Deputy Commissioner for Systems"
"SZ06" = "Office of the General Counsel"
"SZ13" = "Deputy Commissioner for Hearing Operations"
"SZ14" = "Deputy Commissioner for Retirement & Disability Policy"
"SZ15" = "Deputy Commissioner for Analytics, Review, and Oversight"
"SZZZ" = "Social Security Administration, All Other"
"TCZZ" = "U.S. International Trade Commission, All Other"
"TD01" = "Office of the Secretary of Transportation (OST)"
"TD03" = "Federal Aviation Administration (FAA)"
"TD04" = "Federal Highway Administration (FHWA)"
"TD05" = "Federal Railroad Administration (FRA)"
"TD16" = "Pipeline and Hazardous Materials Safety Administration (PHMSA)"
"TD17" = "Federal Motor Carrier Safety Administration (FMCSA)"
"TDZZ" = "Department of Transportation, All Other"
"TR91" = "Departmental Offices"
"TR93" = "Internal Revenue Service"
"TRAD" = "United States Mint"
"TRAI" = "Bureau of Engraving and Printing"
"TRAJ" = "Office of the Comptroller of the Currency"
"TRCC" = "IRS Chief Counsel"
"TRFD" = "Bureau of the Fiscal Service"
"TRTG" = "Inspector General for Tax Administration"
"TRZZ" = "Department of the Treasury, All Other"
"XXZZ" = "All Other Agencies, All Other"
;
value $DLEAVING
	'A'='No'
	'B'='Yes, to take another Federal job'
	'C'='Yes, to take a job outside Federal Gov'
	'D'='Other';
;
value $DMINORITY 
	'A'='Minority'
	'B'='Non-Minority'
;
value $DSEX
	'A'='Male'
	'B'='Female'
;
value $DSUPER
	'A'='Non-Supervisor/Team Leader'
	'B'='Supervisor/Manager/Senior Leader'
;
value $DEDUC
	'A'="Less than a Bachelor's Degree"
	'B'="Bachelor's Degree"
	'C'="Beyond a Bachelor's Degree"
;
value $DFEDTEN
	'A'='Ten years or fewer'
	'B'='Between 10 and 20 years'
	'C'='More than 20 years'
;
value $Q_A
	'1'='Strongly Disagree'
	'2'='Disagree'
	'3'='Neither Agree nor Disagree'
	'4'='Agree'
	'5'='Strongly Agree'
	'X'='Do Not Know'
;
value $Q_B
	'1'='Very Dissatisfied'
	'2'='Dissatisfied'
	'3'='Neither Satisfied nor Dissatisfied'
	'4'='Satisfied'
	'5'='Very Satisfied'
	'X'='No Basis to Judge'
;
value $Q_C
	'1'='Very Poor'
	'2'='Poor'
	'3'='Fair'
	'4'='Good'
	'5'='Very Good'
	'X'='Do Not Know'
;
value $Q_D
	'1'='Strongly Disagree'
	'2'='Disagree'
	'3'='Neither Agree nor Disagree'
	'4'='Agree'
	'5'='Strongly Agree'
	'X'='No Basis to Judge'
;
value $Q_Ea
	"1"="The shutdown had no impact on my working/pay status" 
	"2"="I did not work and did not receive pay until after the lapse ended" 
	"3"="I worked some of the shutdown but did not receive pay until after the lapse ended" 
	"4"="I worked for the entirety of the shutdown but did not receive pay until after the lapse ended" 
	"5"="Other, not listed above" 
;
value $Q_Eb
	"1"="It had no impact" 
	"2"="A slightly negative impact" 
	"3"="A moderately negative impact" 
	"4"="A very negative impact" 
	"5"="An extremely negative impact" 
;
value $Q_Eca
	"1"="Unmanageable workload" 
;
value $Q_Ecb
	"1"="Missed deadlines" 
;
value $Q_Ecc
	"1"="Unrecoverable loss of work" 
;
value $Q_Ecd
	"1"="Reduced customer service" 
;
value $Q_Ece
	"1"="Delayed work" 
;
value $Q_Ecf
	"1"="Reduced work quality" 
;
value $Q_Ecg
	"1"="Cutback of critical work" 
;
value $Q_Ech
	"1"="Time lost in restarting work" 
;
value $Q_Eci
	"1"="Unmet statutory requirements" 
;
value $Q_Ecj
	"1"="Other" 
;
value $Q_Ed
	"1"="I am looking for another job specifically because of the shutdown." 
	"2"="I am looking for another job, but the shutdown is only one of the reasons" 
	"3"="I am looking for another job, but the shutdown had no influence on that decision." 
	"4"="I am not looking for another job currently." 
;
value $Q_Ee
	"5"="Strongly Agree" 
	"4"="Agree" 
	"3"="Neither Agree nor Disagree" 
	"2"="Disagree" 
	"1"="Strongly Disagree" 
	"X"="No support required" 
;
run;



data temp;
	set temp;
	format 
		AGENCY  $AGENCY.
		LEVEL1 $LEVEL1_.
		Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9 Q10 Q11 Q12 Q13 Q14 Q15 Q16 Q17 Q18 $Q_A.
		Q19 $Q_D.
		Q20 Q21 Q22 Q23 Q24 Q25 Q26 Q27 $Q_A.
		Q28 $Q_C.
		Q29 Q30 Q31 Q32 Q33 Q34 Q35 Q36 Q37 Q38 Q39 Q40 Q41 Q42 Q43 Q44 Q45 Q46 Q47 Q48 Q49 Q50 Q51 $Q_A.
		Q52 $Q_C.
		Q53 Q54 Q55 Q56 Q57 Q58 Q59 $Q_A.
		Q60 $Q_C.
		Q61 Q62 $Q_A.
		Q63 Q64 Q65 Q66 Q67 Q68 Q69 Q70 Q71 $Q_B.
		Q73 $Q_Ea.
		Q74 $Q_Eb.
		Q75_1 $Q_Eca.
		Q75_2 $Q_Ecb.
		Q75_3 $Q_Ecc.
		Q75_4 $Q_Ecd.
		Q75_5 $Q_Ece.
		Q75_6 $Q_Ecf.
		Q75_7 $Q_Ecg.
		Q75_8 $Q_Ech.
		Q75_9 $Q_Eci.
		Q75_10 $Q_Ecj. 
		Q76 $Q_Ed.
		Q77 $Q_Ee.
		DLEAVING $DLEAVING.
		DMINORITY $DMINORITY.
		DSEX $DSEX.
		DSUPER $DSUPER.
		DEDUC $DEDUC.
		DFEDTEN $DFEDTEN.
;

label 
	agency='Agency'
	LEVEL1='First level below agency'
	POSTWT='Analysis weight'
	RANDOM='Random Unique Code'

	Q1="1. I am given a real opportunity to improve my skills in my organization."
	Q2="2. I have enough information to do my job well."
	Q3="3. I feel encouraged to come up with new and better ways of doing things."
	Q4="4. My work gives me a feeling of personal accomplishment."
	Q5="5. I like the kind of work I do."
	Q6="6. I know what is expected of me on the job."
	Q7="7. When needed I am willing to put in the extra effort to get a job done."
	Q8="8. I am constantly looking for ways to do my job better."
	Q9="9. I have sufficient resources (for example, people, materials, budget) to get my job done."
	Q10="10. My workload is reasonable."
	Q11="11. My talents are used well in the workplace."
	Q12="12. I know how my work relates to the agency's goals."
	Q13="13. The work I do is important."
	Q14="14. Physical conditions (for example, noise level, temperature, lighting, cleanliness in the workplace) allow employees to perform their jobs well."
	Q15="15. My performance appraisal is a fair reflection of my performance."
	Q16="16. I am held accountable for achieving results."
	Q17="17. I can disclose a suspected violation of any law, rule or regulation without fear of reprisal."
	Q18="18. My training needs are assessed."
	Q19="19. In my most recent performance appraisal, I understood what I had to do to be rated at different performance levels (for example, Fully Successful, Outstanding)."
	Q20="20. The people I work with cooperate to get the job done."
	Q21="21. My work unit is able to recruit people with the right skills."
	Q22="22. Promotions in my work unit are based on merit."
	Q23="23. In my work unit, steps are taken to deal with a poor performer who cannot or will not improve."
	Q24="24. In my work unit, differences in performance are recognized in a meaningful way."
	Q25="25. Awards in my work unit depend on how well employees perform their jobs."
	Q26="26. Employees in my work unit share job knowledge with each other."
	Q27="27. The skill level in my work unit has improved in the past year."
	Q28="28. How would you rate the overall quality of work done by your work unit?"
	Q29="29. My work unit has the job-relevant knowledge and skills necessary to accomplish organizational goals."
	Q30="30. Employees have a feeling of personal empowerment with respect to work processes."
	Q31="31. Employees are recognized for providing high quality products and services."
	Q32="32. Creativity and innovation are rewarded."
	Q33="33. Pay raises depend on how well employees perform their jobs."
	Q34="34. Policies and programs promote diversity in the workplace (for example, recruiting minorities and women, training in awareness of diversity issues, mentoring)."
	Q35="35. Employees are protected from health and safety hazards on the job."
	Q36="36. My organization has prepared employees for potential security threats."
	Q37="37. Arbitrary action, personal favoritism and coercion for partisan political purposes are not tolerated."
	Q38="38. Prohibited Personnel Practices (for example, illegally discriminating for or against any employee/applicant, obstructing a person’s right to compete for employment, knowingly violating veterans’ preference requirements) are not tolerated."
	Q39="39. My agency is successful at accomplishing its mission."
	Q40="40. I recommend my organization as a good place to work."
	Q41="41. I believe the results of this survey will be used to make my agency a better place to work."
	Q42="42. My supervisor supports my need to balance work and other life issues."
	Q43="43. My supervisor provides me with opportunities to demonstrate my leadership skills."
	Q44="44. Discussions with my supervisor about my performance are worthwhile."
	Q45="45. My supervisor is committed to a workforce representative of all segments of society."
	Q46="46. My supervisor provides me with constructive suggestions to improve my job performance."
	Q47="47. Supervisors in my work unit support employee development."
	Q48="48. My supervisor listens to what I have to say."
	Q49="49. My supervisor treats me with respect."
	Q50="50. In the last six months, my supervisor has talked with me about my performance."
	Q51="51. I have trust and confidence in my supervisor."
	Q52="52. Overall, how good a job do you feel is being done by your immediate supervisor?"
	Q53="53. In my organization, senior leaders generate high levels of motivation and commitment in the workforce."
	Q54="54. My organization's senior leaders maintain high standards of honesty and integrity."
	Q55="55. Supervisors leaders work well with employees of different backgrounds."
	Q56="56. Managers communicate the goals of the organization."
	Q57="57. Managers review and evaluate the organization's progress toward meeting its goals and objectives."
	Q58="58. Managers promote communication among different work units (for example, about projects, goals, needed resources)."
	Q59="59. Managers support collaboration across work units to accomplish work objectives."
	Q60="60. Overall, how good a job do you feel is being done by the manager directly above your immediate supervisor?"
	Q61="61. I have a high level of respect for my organization’s senior leaders."
	Q62="62. Senior leaders demonstrate support for Work/Life programs."
	Q63="63. How satisfied are you with your involvement in decisions that affect your work?"
	Q64="64. How satisfied are you with the information you receive from management on what's going on in your organization?"
	Q65="65. How satisfied are you with the recognition you receive for doing a good job?"
	Q66="66. How satisfied are you with the policies and practices of your senior leaders?"
	Q67="67. How satisfied are you with your opportunity to get a better job in your organization?"
	Q68="68. How satisfied are you with the training you receive for your present job?"
	Q69="69. Considering everything, how satisfied are you with your job?"
	Q70="70. Considering everything, how satisfied are you with your pay?"
	Q71="71. Considering everything, how satisfied are you with your organization?"

	Q73="Which of the following best describes the impact of the partial government shutdown (December 22, 2018 – January 25, 2019) on your working/pay status?"
	Q74="How was your everyday work impacted during (if you worked) or after the partial government shutdown?"
	Q75_1="The partial government shutdown negatively affected work: Unmanageable workload"
	Q75_2="The partial government shutdown negatively affected work: Missed deadlines"
	Q75_3="The partial government shutdown negatively affected work: Unrecoverable loss of work"
	Q75_4="The partial government shutdown negatively affected work: Reduced customer service"
	Q75_5="The partial government shutdown negatively affected work: Delayed work"
	Q75_6="The partial government shutdown negatively affected work: Reduced work quality"
	Q75_7="The partial government shutdown negatively affected work: Cutback of critical work"
	Q75_8="The partial government shutdown negatively affected work: Time lost in restarting work"
	Q75_9="The partial government shutdown negatively affected work: Unmet statutory requirements"
	Q75_10="The partial government shutdown negatively affected work: Other"
	Q76="Are you looking for another job because of the partial government shutdown?"
	Q77="My agency provided the support (e.g., communication, assistance, guidance) I needed during the partial government shutdown."

	DLEAVING='Intent to Leave'
	DMINORITY='Minority/Non-Minority Indicator'
	DSEX='Gender'
	DSUPER='Supervisory Status'
	DEDUC='Education Level'
	DFEDTEN='Federal Tenure'
	;
run;



* produce summary of counts and verify formats and labels;
ods pdf file='\PRDF 2019 Unweighted Formatted Data Frequencies - actual.pdf' style=minimal;
proc freq data=temp (drop=POSTWT RANDOM);
  table _ALL_ / list missing nocum;
run;
ods pdf close;




