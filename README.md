# year3_semester1

על מנת צפיה קריאה יותר בקובץ לחץ על 
             --  Row  --                 
______________________________________________________________

--countCharacterOccurrences = הפונקציה--

CHAR = char הכנס פרמטר מסוג  
str = מחרוזת לבדיקת האותיות
count = סופר את מספר המופעים של הפרמטר מתוך המחרוזת
i = המיקום של האות בלולאה
for = str רץ באיטרציה על המחרוזת
if = אם נמצא תו שווה לפרמטר אז נוסיף עוד 1 לספירה
echo = לבסוף נחזיר את מספר המופעים
_______________________________________________________________

--Jenkinsfile = pipline - קובץ ה--

pipline = {jenkins - ב pipline הגדרת }
agent any = זמין להרצה על כל סוכן
parameters =  CHAR - מגדיר פרמטר בשם , a פרמטר ברירת מחדל 
environment = מכיל את שם הקובץ בו מוגדר הפלט
stages = pipline - הגדרת שלבים ב
Clone Repository = main מוגדר בתור  , url == jenkins - ממנו המידע מגיע ל github כתובת ה                     
script 'Run PowerShell Script' = html שלב זה עובר על הסקריפט ובודק אותו ולבסוף מחזיר את הפלט לדף                                   
script 'Display Parameter' = מעדכן את ערך שהתקבל בפרמטר
script 'Generate HTML Report' = מדפיס הודעה מתאימה אם נמצא הפרמטר או שלא נמצא
post = לאחר סיום ביצוע הפעולה מפרסם דוח

______________________________________________________________