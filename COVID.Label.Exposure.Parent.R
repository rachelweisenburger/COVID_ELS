## ---------------------------
##
## Script name: COVID.Label.Exposure.Parent.R
##
## Purpose of script: Label the Parent COVID exposure data 
##
## Authors: Dr. Anthony J. Gifuni & Rachel Weisenburger
##
## Date Created: 2018-04-28
##
## Copyright (c) SNAP Lab, 2020
## Email: gifuni@stanford.edu
##
## ---------------------------
##
## Notes:
##   
##
## ---------------------------------------------------------------------
Install_And_Load <- function(packages) {
  k <- packages[!(packages %in% installed.packages()[,"Package"])];
  if(length(k))
  {install.packages(k, repos="https://cran.rstudio.com/");}
  
  for(package_name in packages)
  {library(package_name,character.only=TRUE, quietly = TRUE);}
}

Install_And_Load(c("Hmisc"))

## ---------------------------------------------------------------------

## Import data (COVID data - Child, Parent; ELS - T1, T2, T3)
#source(here::here("Code","COVID.Import.Data.R"))

## ---------------------------------------------------------------------

#Setting Labels
label(CHILD$covid_p_date)="What is today's date?"
label(CHILD$covid_zipcode_p)="Zipcode"
label(CHILD$covid_intro_p_4)="Is your child enrolled in school/college for the current academic year (2019-2020)?"
label(CHILD$covid_intro_p_5)="Which best describes the area in which you live?"
label(CHILD$covid_intro_p_6)="How many people currently live in your home (excluding your child)?"
label(CHILD$covid_intro_p_7___1)="Please specify your relationship to the people in your home. Please select based on the home you currently spend the most time at. Check all that apply. (choice=One parent)"
label(CHILD$covid_intro_p_7___2)="Please specify your relationship to the people in your home. Please select based on the home you currently spend the most time at. Check all that apply. (choice=Two parents)"
label(CHILD$covid_intro_p_7___3)="Please specify your relationship to the people in your home. Please select based on the home you currently spend the most time at. Check all that apply. (choice=Grandparents)"
label(CHILD$covid_intro_p_7___4)="Please specify your relationship to the people in your home. Please select based on the home you currently spend the most time at. Check all that apply. (choice=Siblings)"
label(CHILD$covid_intro_p_7___5)="Please specify your relationship to the people in your home. Please select based on the home you currently spend the most time at. Check all that apply. (choice=Children)"
label(CHILD$covid_intro_p_7___6)="Please specify your relationship to the people in your home. Please select based on the home you currently spend the most time at. Check all that apply. (choice=Other Relatives)"
label(CHILD$covid_intro_p_2)="Are you and your child covered by health insurance?"
label(CHILD$covid_background_p_4)="How would you rate your child's overall physical health?"
label(CHILD$covid_background_p_5___1)="Has a health professional ever told you that you had any of the following health conditions? (choice=Seasonal allergies)"
label(CHILD$covid_background_p_5___2)="Has a health professional ever told you that you had any of the following health conditions? (choice=Asthma or other lung problems)"
label(CHILD$covid_background_p_5___3)="Has a health professional ever told you that you had any of the following health conditions? (choice=Heart problems)"
label(CHILD$covid_background_p_5___4)="Has a health professional ever told you that you had any of the following health conditions? (choice=Kidney problems)"
label(CHILD$covid_background_p_5___5)="Has a health professional ever told you that you had any of the following health conditions? (choice=Immune disorder)"
label(CHILD$covid_background_p_5___6)="Has a health professional ever told you that you had any of the following health conditions? (choice=Diabetes or high blood sugar)"
label(CHILD$covid_background_p_5___7)="Has a health professional ever told you that you had any of the following health conditions? (choice=Cancer)"
label(CHILD$covid_background_p_5___8)="Has a health professional ever told you that you had any of the following health conditions? (choice=Arthritis)"
label(CHILD$covid_background_p_5___9)="Has a health professional ever told you that you had any of the following health conditions? (choice=Frequent or very bad headaches)"
label(CHILD$covid_background_p_5___10)="Has a health professional ever told you that you had any of the following health conditions? (choice=Epilepsy or seizures)"
label(CHILD$covid_background_p_5___11)="Has a health professional ever told you that you had any of the following health conditions? (choice=Serious stomach or bowel problems)"
label(CHILD$covid_background_p_5___12)="Has a health professional ever told you that you had any of the following health conditions? (choice=Serious acne or skin problems)"
label(CHILD$covid_background_p_5___13)="Has a health professional ever told you that you had any of the following health conditions? (choice=Emotional or mental health problems (such as Depression or Anxiety)"
label(CHILD$covid_background_p_5___14)="Has a health professional ever told you that you had any of the following health conditions? (choice=Problems with alcohol or drugs)"
label(CHILD$covid_background_health___15)="Has a health professional ever told you that you had any of the following health conditions? (choice=None of the above)"
label(CHILD$covid_intro_p_15)="How would you rate your child's overall mental/emotional health before the Coronavirus/COVID-19 crisis in your area?"
label(CHILD$covid_intro_complete)="Complete?"
label(CHILD$covid_exposure_p_intro)="Survey Timestamp"
label(CHILD$covid_exposure_p_16___1)="... has your child been exposed to someone likely to have COVID-19? (choice=Yes, someone with positive test"
label(CHILD$covid_exposure_p_16___2)="... has your child exposed to someone likely to have COVID-19? (choice=Yes, someone with medical diagnosis, but no test)"
label(CHILD$covid_exposure_p_16___3)="... has your child exposed to someone likely to have COVID-19? (choice=Yes, someone with possible symptoms, but no diagnosis by a doctor)"
label(CHILD$covid_exposure_p_16___4)="... has your child exposed to someone likely to have COVID-19? (choice=No)"
label(CHILD$covid_exposure_p_17___1)="... has your child been suspected of having Coronavirus/COVID-19 infection? (choice=Yes, has positive test)"
label(CHILD$covid_exposure_p_17___2)="... has your child been suspected of having Coronavirus/COVID-19 infection? (choice=Yes, medical diagnosis but no test)"
label(CHILD$covid_exposure_p_17___3)="... has your child been suspected of having Coronavirus/COVID-19 infection? (choice=Yes, has had pssible symptoms, but no diagnosis by a doctor)"
label(CHILD$covid_exposure_p_17___4)="... has your child been suspected of having Coronavirus/COVID-19 infection? (choice=No symptoms or signs)"
label(CHILD$covid_exposure_p_18___1)="... have your child had any of the following symptoms? (choice=Fever)"
label(CHILD$covid_exposure_p_18___2)="... have your child had any of the following symptoms? (choice=Cough)"
label(CHILD$covid_exposure_p_18___3)="... have your child had any of the following symptoms? (choice=Shortness of breath)"
label(CHILD$covid_exposure_p_18___4)="... have your child had any of the following symptoms? (choice=Sore throat)"
label(CHILD$covid_exposure_p_18___5)="... have your child had any of the following symptoms? (choice=Fatigue)"
label(CHILD$covid_exposure_p_18___6)="... have your child had any of the following symptoms? (choice=Loss of taste or small)"
label(CHILD$covid_exposure_p_18___7)="... have your child had any of the following symptoms? (choice=Other)"
label(CHILD$covid_exposure_p_18___8)="... have your child had any of the following symptoms? (choice=None of the above)"
label(CHILD$covid_exposure_p_19___1)=".. has anyone in your child's family been diagnosed with Coronavirus/COVID-19? (choice=Yes, member of household)"
label(CHILD$covid_exposure_p_19___2)=".. has anyone in your child's family been diagnosed with Coronavirus/COVID-19? (choice=Yes, non-household member)"
label(CHILD$covid_exposure_p_19___3)=".. has anyone in your child's family been diagnosed with Coronavirus/COVID-19? (choice=No)"
label(CHILD$covid_exposure_p_20___1)="... have any of the following happened to your child's family members because of Coronavirus/COVID-19? (choice=Fallen ill physically)"
label(CHILD$covid_exposure_p_20___2)="... have any of the following happened to your child's family members because of Coronavirus/COVID-19? (choice=Hospitalized)"
label(CHILD$covid_exposure_p_20___3)="... have any of the following happened to your child's family members because of Coronavirus/COVID-19? (choice=Put into self-quarantine with symptoms)"
label(CHILD$covid_exposure_p_20___4)="... have any of the following happened to your child's family members because of Coronavirus/COVID-19? (choice=Put into self-quarantine without symptoms (e.g., due to possible exposure))"
label(CHILD$covid_exposure_p_20___5)="... have any of the following happened to your child's family members because of Coronavirus/COVID-19? (choice=Lost job)"
label(CHILD$covid_exposure_p_20___6)="... have any of the following happened to your child's family members because of Coronavirus/COVID-19? (choice=Reduced ability to earn money)"
label(CHILD$covid_exposure_p_20___7)="... have any of the following happened to your child's family members because of Coronavirus/COVID-19? (choice=Passed away)"
label(CHILD$covid_exposure_p_20___8)="... have any of the following happened to your child's family members because of Coronavirus/COVID-19? (choice=None of the above)"
label(CHILD$covid_exposure_p_21)="During the PAST TWO WEEKS, how worried has your child been about: ...being infected?"
label(CHILD$covid_exposure_p_22)="During the PAST TWO WEEKS, how worried has your child been about:  ...friends of family being infected?"
label(CHILD$covid_exposure_p_23)="During the PAST TWO WEEKS, how worried has your child been about: ... his/herphysical health being influenced by Coronavirus/COVID-19?"
label(CHILD$covid_exposure_p_24)="During the PAST TWO WEEKS, how worried has your child been about: ...his/her mental/emotional health being influenced by Coronavirus/COVID-19?"
label(CHILD$covid_exposure_p_25)="How much is your child reading, or talking about Coronavirus/COVID-19?"
label(CHILD$covid_exposure_p_26)="Has the Coronavirus/COVID-19 crisis in your area led to any positive changes in your child's life?"
label(CHILD$covid_exposure_p_27)="Please specifiy:"
label(CHILD$covid_exposure_complete)="Complete?"
label(CHILD$covid_changes_timestamp)="Survey Timestamp"
label(CHILD$covid_changes_p_28a)="...has your child's school building been closed? "
label(CHILD$covid_changes_p_28ab)="Are they attending classes in-person?"
label(CHILD$covid_changes_p_28aa)="Are classes in session?"
label(CHILD$covid_changes_p_28ba)="Have classes resumed online?"
label(CHILD$covid_changes_p_28bb)="Do you have easy access to the internet and a computer?"
label(CHILD$covid_changes_p_28bc)="Are there assignments for you to complete?"
label(CHILD$covid_changes_p_28)="Are you able to receive meals from the school?"
label(CHILD$covid_changes_work)="...if you are working, has your workplace closed?"
label(CHILD$covid_changes_worka)="...if you are working, have you been able to telework?"
label(CHILD$covid_changes_p_29)="How many people, from outside your household, has your child had in-person conversation with over the past two weeks? "
label(CHILD$covid_changes_p_30)="How much time has your child spent going outside of the home in the past two weeks (e.g., going to stores, parks, etc.)?"
label(CHILD$covid_changes_p_31)="... how stressful have the restrictions on leaving home been for your child?"
label(CHILD$ccovid_changes_p_32)="... have your child's contacts with people outside of your home changed relative to before the Coronavirus/COVID-19 crisis in your area?"
label(CHILD$covid_changes_p_33)="... how much difficulty has your child had following the recommendations for keeping away from close contact with people?"
label(CHILD$covid_changes_p_34)="... has the quality of relationships between your child and members of his/her family changed?"
label(CHILD$covid_changes_p_35)="... how stressful have these changes in family contacts been for your child?"
label(CHILD$covid_changes_p_36)="... has the quality of your child's relationships with his/herfriends changed?"
label(CHILD$covid_changes_p_37)="... how stressful have these changes in your social contacts been for you?"
label(CHILD$covid_changes_p_38)="... how much has cancellation of important events (such as graduation, prom, vacation, etc.) in your life been difficult for you in the past two weeks?"
label(CHILD$covid_changes_p_39)="... to what degree have changes related to Coronavirus/COVID-19 created financial problems for you or your family in the past two weeks?"
label(CHILD$covid_changes_p_40)="... to what degree has your child been concerned about the stability of your living situation?"
label(CHILD$covid_changes_p_41)="... did your child worry whether your food would run out because of a lack on money?"
label(CHILD$covid_changes_p_42)="How hopeful is your child that the Coronavirus/COVID-19 crisis problem will end soon?"
label(CHILD$covid_changes_complete)="Complete?"
label(CHILD$precovid_behav_timestamp)="Survey Timestamp"
label(CHILD$precovid_p_43)="... how many hours per night did your child sleep on average?"
label(CHILD$precovid_p_44)="... how many days per week did your child exercise (e.g., increased heart rate, breathing) for at least 30 minutes?"
label(CHILD$precovid_p_45)="... how many days per week did your child spend time outdoors?"
label(CHILD$precovid_p_46)="... how worried was your child generally?"
label(CHILD$precovid_p_47)="... how happy versus sad was your child?"
label(CHILD$precovid_p_48)="... how much was your child able to enjoy your usual activities?"
label(CHILD$precovid_p_49)="... how relaxed versus anxious was your child?"
label(CHILD$precovid_p_50)="... how fidgety or restless was your child?"
label(CHILD$precovid_p_51)="... how fatigued or tired was your child?"
label(CHILD$precovid_p_52)="... how well was your child able to concetrate or focus?"
label(CHILD$precovid_p_53)="... how irritable or easily angered was your child?"
label(CHILD$precovid_p_54)="... how lonely was your child?"
label(CHILD$precovid_p_55)="... to what extent was your child having negative thoughts, thought about unpleasant experiences, or thought about things that made you feel bad?"
label(CHILD$precovid_p_56)="... watching TV or digital media (e.g., Netflix, YouTube, web surfing)?"
label(CHILD$precovid_p_57)="... using social media (e.g., FaceTime, Facebook, Instagram, Twitter, Snapchat, TikTok)?"
label(CHILD$precovid_p_58)="... playing video games?"
label(CHILD$precovid_behav_complete)="Complete?"
label(CHILD$duringcovid_behav_timestamp)="Survey Timestamp"
label(CHILD$precovid_p_43_after)="... how many hours per night did you child sleep on average?"
label(CHILD$precovid_p_44_after)="... how many days per week did your child exercise (e.g., increased heart rate, breathing) for at least 30 minutes?"
label(CHILD$precovid_p_45_after)="... how many days per week did your child spend time outdoors?"
label(CHILD$precovid_p_46_after)="... how worried was your child generally?"
label(CHILD$precovid_p_47_after)="... how happy versus sad was your child?"
label(CHILD$precovid_p_48_after)="... how much was your child been able to enjoy his/her usual activities?"
label(CHILD$precovid_p_49_after)="... how relaxed versus anxious has your child been?"
label(CHILD$precovid_p_50_after)="... how fidgety or restless have you been?"
label(CHILD$precovid_p_51_after)="... how fatigued or tired have you felt?"
label(CHILD$precovid_p_52_after)="... how well was your child able to concetrate or focus?"
label(CHILD$precovid_p_53_after)="... how irritable or easily angered was your child?"
label(CHILD$precovid_p_54_after)="... how lonely was your child?"
label(CHILD$precovid_p_55_after)="... to what extent did your child have negative thoughts, thought about unpleasant experiences, or thought about things that made you feel bad?"
label(CHILD$precovid_p_56_after)="... watching TV or digital media (e.g., Netflix, YouTube, web surfing)?"
label(CHILD$precovid_p_57_after)="... using social media (e.g., FaceTime, Facebook, Instagram, Twitter, Snapchat, TikTok)?"
label(CHILD$precovid_p_58_after)="... playing video games?"
label(CHILD$covid_p_89_after___1)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Resource room)"
label(CHILD$covid_p_89_after___2)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Tutoring)"
label(CHILD$covid_p_89_after___3)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Mentoring programs)"
label(CHILD$covid_p_89_after___4)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=After school activities or programs)"
label(CHILD$covid_p_89_after___5)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Volunteer programs)"
label(CHILD$covid_p_89_after___6)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Psychotherapy)"
label(CHILD$covid_p_89_after___7)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Psychiatric care)"
label(CHILD$covid_p_89_after___8)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Occupational therapy)"
label(CHILD$covid_p_89_after___9)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Physical therapy)"
label(CHILD$covid_p_89_after___10)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Speech/language therapy)"
label(CHILD$covid_p_89_after___11)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Sporting activities)"
label(CHILD$covid_p_89_after___12)="Which of the following supports weace for you before the Coronavirus/COVID-19 crisis and have been disrupted over the PAST TWO WEEKS? (choice=Medical care for chronic illnesses)"
label(CHILD$covid_p_89_after___13)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=Other)"
label(CHILD$covid_p_89_after___14)="Which of the following supports for your child were in place before the Coronavirus/COVID-19 crisis in your area and have been disrupted over the PAST TWO WEEKS? (choice=None of the above)"
label(CHILD$covid_p_89a_after)="Please specifiy your other supports for your child that have been disrupted by Coronavirus:"
label(CHILD$duringcovid_behav_complete)="Complete?"

##Renaming NIH Variables to be more descriptive

PARENT<-rename(PARENT, 
               "Subject_ID_Timepoint"="record_id",
               "Parent_date.TC"  = "covid_p_date",
               "Zipcode_p.TC"  = "covid_zipcode_p",
               "School_type_p.TC" ="covid_intro_p_4",
               "Area_live_p.TC"  = "covid_intro_p_5",
               "Number_people_home_p.TC" = "covid_intro_p_6",
               "One_parent_home.TC" = "covid_intro_p_7___1",
               "Two_parents_home.TC" =  "covid_intro_p_7___2",
               "Grandparents_home.TC" ="covid_intro_p_7___3",
               "Siblings_home.TC" = "covid_intro_p_7___4",
               "Children_home.TC" =  "covid_intro_p_7___5",
               "Other_relative_home.TC" =  "covid_intro_p_7___6",
               "Non_relative_home.TC" = "covid_intro_p_7___7",
               "Health_insurance_coverage.TC" ="covid_background_p_2",
               "Gov_assist_3months.TC"= "covid_intro_p_10",
               "Physical_health_rating_p.TC.TC"  = "covid_background_p_4",
               "Seasonal_allergies_p.TC" = "covid_background_p_5___1",
               "Asthma_lung_problems_p.TC" = "covid_background_p_5___2",
               "Heart_problems_p.TC"="covid_background_p_5___3",
               "Kidney_problems_p.TC"="covid_background_p_5___4",
               "Immune_disorder_p.TC" = "covid_background_p_5___5",
               "Diabetes_p.TC"="covid_background_p_5___6",
               "Cancer_p.TC"="covid_background_p_5___7",
               "Arthritis_p.TC"="covid_background_p_5___8",
               "Headaches_p.TC"="covid_background_p_5___9",
               "Epilepsy_seizures_p.TC"="covid_background_p_5___10",
               "Stomach_problems_p.TC"="covid_background_p_5___11",
               "Skin_problems_p.TC"="covid_background_p_5___12",
               "Psych_problems_p.TC"= "covid_background_p_5___13",
               "Substance_problems_p.TC"="covid_background_p_5___14",
               "No_health_conditions_p.TC" ="covid_background_p_5___15",
               "Mental_health_rating_p.TC"="covid_intro_p_15",
               "Exposed_dx_pos_test_p.TC"  = "covid_exposure_p_16___1",
               "Exposed_dx_no_test_p.TC"  = "covid_exposure_p_16___2",
               "Exposed_symptoms_no_test_p.TC"  = "covid_exposure_p_16___3",
               "Exposed_no_p.TC"  =  "covid_exposure_p_16___4",
               "Child_dx_pos_test_p.TC"  = "covid_exposure_p_17___1",
               "Child_dx_no_test_p.TC"  ="covid_exposure_p_17___2",
               "Child_symptoms_no_test_p.TC"  = "covid_exposure_p_17___3",
               "Child_no_symptoms_signs_p.TC"  = "covid_exposure_p_17___4",
               "Child_fever_p.TC"  =  "covid_exposure_p_18___1",
               "Child_cough_p.TC"  = "covid_exposure_p_18___2",
               "Child_short_breath_p.TC"  =  "covid_exposure_p_18___3",
               "Child_sore_throat_p.TC"  ="covid_exposure_p_18___4",
               "Child_fatigue_p.TC"  =  "covid_exposure_p_18___5",
               "Child_loss_taste_smell_p.TC"  ="covid_exposure_p_18___6",
               "Child_other_symptom_p.TC"  = "covid_exposure_p_18___7",
               "Child_no_symptom_p.TC"  = "covid_exposure_p_18___8",
               "Child_other_symptom_p_desc.TC"  = "covid_exposure_p_18a",
               "Mem_household_covid_dx_p.TC" ="covid_exposure_p_19___1",
               "Non_mem_household_covid_dx_pTC" ="covid_exposure_p_19___2",
               "No_fam_covid_dx_p.TC" ="covid_exposure_p_19___3",
               "Fam_member_ill_p.TC"="covid_exposure_p_20___1",
               "Fam_member_hospitalized_p.TC"="covid_exposure_p_20___2",
               "Fam_member_selfquar_symp_p.TC"= "covid_exposure_p_20___3",
               "Fam_member_selfquar_nosymp_p.TC"="covid_exposure_p_20___4",
               "Fam_member_lost_job_p.TC"="covid_exposure_p_20___5",
               "Fam_member_less_money_p.TC"="covid_exposure_p_20___6",
               "Fam_member_pass_away_p.TC"="covid_exposure_p_20___7",
               "No_fam_member_changes_p.TC" = "covid_exposure_p_20___8",
               "Worry_self_infected_p.TC" ="covid_exposure_p_21",
               "Worry_fam_infected_p.TC" ="covid_exposure_p_22",
               "Self_phys_health_influence_p.TC" ="covid_exposure_p_23",
               "Self_mental_health_influence_p.TC" ="covid_exposure_p_24",
               "Read_talk_question_virus_p.TC" ="covid_exposure_p_25",
               "Covid_positive_changes_p.TC"= "covid_exposure_p_26",
               "Covid_positive_changes_desc_p.TC"="covid_exposure_p_27",
               "School_building_closed_p.TC" = "covid_changes_p_28a",
               "Classes_in_session_p.TC"="covid_changes_p_28aa",
               "Classes_in_person_p.TC" ="covid_changes_p_28ab",
               "Classes_online_p.TC" = "covid_changes_p_28ba",
               "Access_to_internet_p.TC"= "covid_changes_p_28bb",
               "Assignments_p.TC"="covid_changes_p_28bc",
               "Meals_from_school_p.TC"  ="covid_changes_p_28bd",
               "Workplace_closed_p.TC" = "covid_changes_work",
               "Remote_work_possible_p.TC" = "covid_changes_worka",
               "Num_contacts_outside_household_p.TC" = "covid_changes_p_29",
               "Time_going_oustide_p.TC" = "covid_changes_p_30",
               "Stress_of_restrictions_p.TC"="covid_changes_p_31",
               "Contacts_outside_change_p.TC"="covid_changes_p_32",
               "Diff_following_contact_rules_p.TC"= "covid_changes_p_33",
               "Quality_relations_family_change_p.TC"="covid_changes_p_34",
               "Stress_relations_family_change_p.TC"= "covid_changes_p_35",
               "Quality_relations_friends_change_p.TC"=  "covid_changes_p_36",
               "Stress_relations_friends_change_p.TC"="covid_changes_p_37",
               "Cancelling_events_difficulty_p.TC"= "covid_changes_p_38",
               "Family_financial_problems_p.TC"="covid_exposure_p_39",
               "Worry_living_stability_p.TC"="covid_changes_p_40",
               "Worry_no_food_p.TC"="covid_exposure_p_41",
               "Hope_crisis_end_p.TC"="covid_changes_p_42",
               "Hours_sleep_3months_p.TC"="precovid_p_43",
               "Days_exercise_3months_p.TC" ="precovid_p_44",
               "Days_outdoors_3months_p.TC" ="precovid_p_45",
               "Worried_3months_p.TC" ="precovid_p_46",
               "Happy_sad_3months_p.TC"="precovid_p_47",
               "Anhedonia_3months_p.TC"="precovid_p_48",
               "Relaxed_anxious_3months_p.TC"="precovid_p_49",
               "Fidgety_restless_3months_p.TC" = "precovid_p_50",
               "Fatigued_tired_3months_p.TC"= "precovid_p_51",
               "Concentration_3months_p.TC"="precovid_p_52",
               "Irritability_3months_p.TC"="precovid_p_53",
               "Loneliness_3months_p.TC"= "precovid_p_54",
               "Neg_thoughts_3monthss_p.TC"="precovid_p_55",
               "Time_watching_TV_3months_p.TC" ="precovid_p_56",
               "Time_social_media_3months_p.TC"="precovid_p_57",
               "Time_video_games_3months_p.TC" ="precovid_p_58",
               "Hours_sleep_2weeks_p.TC"="precovid_p_43_after",
               "Days_exercise_2weeks_p.TC"="precovid_p_44_after",
               "Days_outdoors_2weeks_p.TC"="precovid_p_45_after",
               "Worried_2weeks_p.TC"="precovid_p_46_after",
               "Happy_sad_2weeks_p.TC"="precovid_p_47_after",
               "Anhedonia_2weeks_p.TC"="precovid_p_48_after",
               "Relaxed_anxious_2weeks_p.TC"="precovid_p_49_after",
               "Fidgety_restless_2weeks_p.TC"="precovid_p_50_after",
               "Fatigued_tired_2weeks_p.TC"= "precovid_p_51_after",
               "Concentration_2weeks_p.TC"="precovid_p_52_after",
               "Irritability_2weeks_p.TC"="precovid_p_53_after",
               "Loneliness_2weeks_p.TC"="precovid_p_54_after",
               "Neg_thoughts_2weeks_p.TC"="precovid_p_55_after",
               "Time_watching_TV_2weeks_p.TC"="precovid_p_56_after",
               "Time_social_media_2weeks_p.TC"= "precovid_p_57_after",
               "Time_video_games_2weeks_p.TC"="precovid_p_58_after",
               "Resource_room_p.TC"="covid_p_89_after___1",
               "Tutoring_p.TC"="covid_p_89_after___2",
               "Mentoring_programs_p.TC"="covid_p_89_after___3",
               "After_school_programs_p.TC"="covid_p_89_after___4",
               "Volunteer_programs_p.TC"="covid_p_89_after___5",
               "Psychotherapy_p.TC"="covid_p_89_after___6",
               "Psychiatric_care_p.TC"= "covid_p_89_after___7",
               "Occup_therapy_p.TC"="covid_p_89_after___8",
               "Phys_therapy_p.TC"="covid_p_89_after___9",
               "Speech_therapy_p.TC"="covid_p_89_after___10",
               "Sport_activities_p.TC"="covid_p_89_after___11",
               "Medical_care_p.TC"="covid_p_89_after___12",
               "Other_support_p.TC"="covid_p_89_after___13",
               "No_support_disruptions_p.TC"="covid_p_89_after___14",
               "Other_support_specify_p.TC"= "covid_p_89a_after")