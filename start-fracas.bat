@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo  ========================================
echo   FRACAS Dashboard - הפעלה ברשת פנימית
echo  ========================================
echo.
echo  התיקייה: %CD%
echo  קובץ הנתונים: AI_unclassified.xlsx  (או לפי fracas-config.json)
echo.
echo  חשוב: האפליקציה נפתחת דרך שרת מקומי כדי שתוכל
echo  לטעון אוטומטית את קובץ ה-Excel המשותף.
echo.

where py >nul 2>&1
if %ERRORLEVEL%==0 (
  start "" "http://127.0.0.1:8765/fracas-dashboard.html"
  echo  שרת פעיל בכתובת: http://127.0.0.1:8765
  echo  לסגירה: Ctrl+C בחלון זה
  echo.
  py -m http.server 8765
  goto :eof
)

where python >nul 2>&1
if %ERRORLEVEL%==0 (
  start "" "http://127.0.0.1:8765/fracas-dashboard.html"
  echo  שרת פעיל בכתובת: http://127.0.0.1:8765
  echo  לסגירה: Ctrl+C בחלון זה
  echo.
  python -m http.server 8765
  goto :eof
)

echo  [שגיאה] לא נמצא Python במחשב.
echo  התקן Python, או פרסם את התיקייה ב-IIS / שרת HTTP פנימי.
echo.
echo  חלופה: פתח fracas-dashboard.html ידנית - יוצגו נתוני הדמו
echo  המוטמעים, ותוכל לטעון קובץ ידנית מלשונית "העלאת נתונים".
echo.
pause
