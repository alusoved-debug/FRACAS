@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo  ========================================
echo   FRACAS Dashboard - הפעלה פנימית Offline
echo  ========================================
echo.
echo  התיקייה: %CD%
echo  קובץ הנתונים: AI_unclassified.xlsx  (או לפי fracas-config.json)
echo.
echo  האפליקציה לא דורשת אינטרנט (Chart.js + Excel מובנים).
echo  שרת מקומי נדרש רק כדי לטעון אוטומטית את קובץ ה-Excel
echo  מהתיקייה ולרענן אותו לפי השעות שהוגדרו.
echo.

where py >nul 2>&1
if %ERRORLEVEL%==0 (
  start "" "http://127.0.0.1:8765/fracas-dashboard.html"
  echo  שרת פעיל: http://127.0.0.1:8765
  echo  לסגירה: Ctrl+C בחלון זה
  echo.
  py -m http.server 8765
  goto :eof
)

where python >nul 2>&1
if %ERRORLEVEL%==0 (
  start "" "http://127.0.0.1:8765/fracas-dashboard.html"
  echo  שרת פעיל: http://127.0.0.1:8765
  echo  לסגירה: Ctrl+C בחלון זה
  echo.
  python -m http.server 8765
  goto :eof
)

echo  [שגיאה] לא נמצא Python במחשב.
echo.
echo  אפשרויות ללא אינטרנט:
echo   1. התקן Python, או פרסם את התיקייה ב-IIS / שרת HTTP פנימי
echo   2. פתח fracas-dashboard.html ידנית ולחץ
echo      "בחר קובץ בסיס נתונים" בלשונית העלאה
echo      (הקובץ יישמר בדפדפן; לעדכון אחרי שינוי Excel - בחר שוב)
echo.
pause
