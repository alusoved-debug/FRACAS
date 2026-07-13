# FRACAS Dashboard

דשבורד ניהול תקלות FRACAS (Failure Reporting, Analysis, and Corrective Action System) לפרויקט **ירח - ABC**.

## הפעלה מהירה

פתח את [GitHub Pages](../../) ישירות בדפדפן — ללא צורך בהתקנה.

## מה כלול

| קובץ | תיאור |
|------|--------|
| `fracas-dashboard.html` | האפליקציה המלאה (HTML/CSS/JS, קובץ יחיד) |

## יכולות הדשבורד

- **72 תקלות אמיתיות** מהקובץ `AI_unclassified.xlsx` (ינואר 2025 – פברואר 2026)
- **אשף ניתוח 10 שלבים**: ולידציה, כפילויות, פארטו, סיווג בעיות, ניתוח הודעות, פעולות מתקנות, RCA (5M), CAPA, דוחות (8D/SCAR/NCR/MRB), סיכום מנהלים
- **גרפים אינטראקטיביים** עם Chart.js
- **פילטרים** לפי חודש, סוג הודעה
- **העלאת נתונים** — CSV/Excel (SheetJS)
- ממשק עברי RTL מלא

## טכנולוגיות

- HTML5 / CSS3 / Vanilla JavaScript
- [Chart.js](https://www.chartjs.org/) – גרפים
- [SheetJS (xlsx)](https://sheetjs.com/) – קריאת Excel
- ללא צורך ב-Node.js / שרת / בנייה

## הפעלה מקומית

```bash
# פשוט פתח את הקובץ בדפדפן:
open fracas-dashboard.html
# או גרור את הקובץ לדפדפן
```
