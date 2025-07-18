
/*
The syntax below is provided as-is to facilitate the importing 
and labeling of the 2018 FEVS Public Release Data File.

Users will need to provide the file path of the unzipped CSV file 
in the infile statement of the first data step below.
Example: infile 'C:\data\fevs_2018_prdf.csv'
*/

libname data 'C:\data';

data temp;
  length	AGENCY $2
			LEVEL1 $4 
			DSEX DEDUC DFEDTEN DSUPER DMINORITY DLEAVING $1 
			Q1-Q71 $1 
			RANDOM $12;
  infile '\fevs_2018_prdf.csv' missover dsd dlm=',' firstobs=2;
  input AGENCY LEVEL1 DSEX DEDUC DFEDTEN DSUPER DMINORITY DLEAVING Q1-Q71 POSTWT RANDOM;
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
"IB" = "Broadcasting Board of Governors"
"IN" = "Department of the Interior"
"KS" = "Corporation for National and Community Service"
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
"AG07" = "Food, Nutrition and Consumer Services"
"AG09" = "Rural Development"
"AG10" = "Research, Education and Economics"
"AG14" = "Marketing & Regulatory Programs"
"AG15" = "Departmental Administration - ASA"
"AG27" = "HQ Office"
"AG29" = "Farm Production and Conservation"
"AGZZ" = "Department of Agriculture, All Other"
"AM10" = "Washington"
"AM20" = "Overseas"
"AMZZ" = "U.S. Agency for International Development, All Other"
"AR2A" = "Army Cyber Command"
"ARAE" = "US Army Acquisition Support Center"
"ARAP" = "Military Entrance Processing Command"
"ARAT" = "Army Test & Evaluation Command"
"ARBA" = "Army Installation Management Command"
"ARCE" = "United States Army Corps of Engineers"
"ARE0" = "Army Europe and Seventh Army"
"ARFC" = "Army Forces Command"
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
"DJAT" = "Bureau of Alochol, Tobacco, Firstarms, and Explosives"
"DJBP" = "Bureau of Prisons"
"DJCM" = "Criminal Division"
"DJCV" = "Civil Division"
"DJEA" = "Drug Enforcement Administration"
"DJEN" = "Environment and Natural Resources Division"
"DJFB" = "Federal Bureau of Investigation"
"DJIG" = "Office of the Inspector General"
"DJIR" = "Executive Office for Immigration Review"
"DJJP" = "Office of Justice Programs"
"DJMS" = "U.S. Marshals Service"
"DJOA" = "Office of the U.S. Attorneys"
"DJTP" = "U.S. Trustee Program"
"DJZZ" = "Department of Justice, All Other"
"DL02" = "Employment and Training Administration"
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
"DN16" = "Office Of The Under Secretary Of Energy"
"DN17" = "Office Of The Under Secretary For Science"
"DNZZ" = "Department of Energy, All Other"
"DRZZ" = "Federal Energy Regulatory Commission, All Other"
"ED03" = "OFFICE FOR CIVIL RIGHTS"
"ED12" = "FEDERAL STUDENT AID"
"EDZZ" = "Department of Education, All Other"
"EE01" = "HEADQUARTERS"
"EE02" = "FIELD"
"EP02" = "Office of Air and Radiation"
"EP05" = "Office of Chemical, Safety and Pollution Prevention"
"EP11" = "Office of Research and Development"
"EP13" = "Office of Water"
"EP15" = "Region 2"
"EP16" = "Region 3"
"EP17" = "Region 4"
"EP18" = "Region 5"
"EP21" = "Region 8"
"EP22" = "Region 9"
"EP23" = "Region 10"
"EPZZ" = "Environmental Protection Agency, All Other"
"FCZZ" = "Federal Communications Commission, All Other"
"FQZZ" = "Court Services and Offender Supervision Agency, All Other"
"FTZZ" = "Federal Trade Commission, All Other"
"GS03" = "Public Buildings Service (PBS)"
"GS53" = "Federal Acquisition Service (FAS)"
"GSZZ" = "General Services Administration, All Other"
"HE02" = "ADMINISTRATION FOR CHILDREN AND FAMILIES"
"HE04" = "CENTERS FOR DISEASE CONTROL & PREVENTION"
"HE05" = "CENTERS FOR MEDICARE AND MEDICAID SERVICES"
"HE06" = "FOOD AND DRUG ADMINISTRATION"
"HE07" = "HEALTH RESOURCES AND SERVICES ADMINISTRATION"
"HE08" = "INDIAN HEALTH SERVICE"
"HE09" = "NATIONAL INSTITUTES OF HEALTH (NIH)"
"HE10" = "OFFICE OF THE SECRETARY"
"HE12" = "OFFICE OF INSPECTOR GENERAL"
"HEZZ" = "Department of Health and Human Services, All Other"
"HFZZ" = "Federal Housing Finance Agency, All Other"
"HS01" = "Citizenship and Immigration Services (CIS)"
"HS02" = "U.S. Customs and Border Protection (CBP)"
"HS03" = "United States Coast Guard (USCG)"
"HS04" = "Federal Emergency Management Agency (FEMA)"
"HS05" = "Federal Law Enforcement Training Center (FLETC)"
"HS06" = "Immigration and Customs Enforcement (ICE)"
"HS09" = "Under Secretary for Management (MGMT)"
"HS10" = "Ofc of the Under Sec for Natl Protection & Programs Dir (NPPD)"
"HS12" = "U.S. Secret Service (USSS)"
"HS14" = "Transportation Security Administration (TSA)"
"HSZZ" = "Department of Homeland Security, All Other"
"HU13" = "Office of General Counsel"
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
"KSZZ" = "Corporation for National and Community Service, All Other"
"NFZZ" = "National Science Foundation, All Other"
"NL10" = "Office of the General Counsel Staff"
"NLZZ" = "National Labor Relations Board, All Other"
"NN10" = "Headquarters NASA"
"NN21" = "Ames Research Center"
"NN22" = "John Glenn Research Center at Lewis Field"
"NN23" = "Langley Research Center"
"NN24" = "Armstrong Flight Research Center"
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
"NV27" = "United States Marine Corps"
"NV39" = "SPACE AND NAVAL WARFARE SYSTEMS COMMAND"
"NV52" = "COMMANDER, NAVY INSTALLATIONS"
"NV60" = "U.S. FLEET FORCES COMMAND"
"NV70" = "U.S. PACIFIC FLEET COMMAND"
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
"ST14" = "Bureau of Consular Affairs (CA)"
"ST20" = "Bureau of Diplomatic Security (DS)"
"ST22" = "Bureau of East Asian and Pacific Affairs (EAP)"
"ST26" = "Bureau of European and Eurasian Affairs (EUR)"
"ST52" = "Bureau of Western Hemisphere Affairs (WHA)"
"STZZ" = "Department of State, All Other"
"SZ01" = "Deputy Commissioner for Budget, Finance,  & Management"
"SZ02" = "Deputy Commissioner for Operations"
"SZ03" = "Deputy Commissioner for Systems"
"SZ06" = "Office of the General Counsel"
"SZ13" = "Deputy Commissioner for Hearing Operations"
"SZ14" = "Deputy Commissioner for Retirement & Disability Policy"
"SZ15" = "Deputy Commissioner for Analytics, Review, and Oversight"
"SZZZ" = "Social Security Administration, All Other"
"TD01" = "Office of the Secretary of Transportation (OST)"
"TD03" = "Federal Aviation Administration (FAA)"
"TD04" = "Federal Highway Administration (FHWA)"
"TD05" = "Federal Railroad Administration (FRA)"
"TD17" = "Federal Motor Carrier Safety Administration (FMCSA)"
"TDZZ" = "Department of Transportation, All Other"
"TR91" = "Departmental Offices (DO)"
"TR93" = "Internal Revenue Service (IRS)"
"TRAD" = "United States Mint (MINT)"
"TRAI" = "Bureau of Engraving and Printing (BEP)"
"TRAJ" = "Office of the Comptroller of the Currency (OCC)"
"TRCC" = "IRS Chief Counsel (IRSCC)"
"TRFD" = "Bureau of the Fiscal Service (FS)"
"TRTG" = "Inspector General for Tax Administration (TIGTA)"
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

	DLEAVING='Intent to Leave'
	DMINORITY='Minority/Non-Minority Indicator'
	DSEX='Gender'
	DSUPER='Supervisory Status'
	DEDUC='Education Level'
	DFEDTEN='Federal Tenure'
	;
run;



* produce summary of counts and verify formats and labels;
ods pdf file='\PRDF 2018 Unweighted Formatted Data Frequencies - actual.pdf' style=minimal;
proc freq data=temp (drop=POSTWT RANDOM);
  table _ALL_ / list missing nocum;
run;
ods pdf close;




