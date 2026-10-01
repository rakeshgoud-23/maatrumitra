# 🌸 MAATRUMITRA (மாத்ரு மித்ரா / मातृमित्र)
> *"Your Trusted Pregnancy Companion" — Care. Nourish. Move. Grow.*

---

## 📖 Project Overview

**MaatruMitra** (*Maatru* = Mother, *Mitra* = Friend) is a complete, full-stack pregnancy wellness, lifestyle, and maternal care web application. It combines the gentle, time-tested wisdom of **South Indian Traditional Wellness (Garbhini Paricharya)** with **Modern Evidence-Based Healthcare Technology**.

MaatruMitra empowers expectant mothers to organize and track their daily rhythms, monitor vitals, follow culturally nourishing diets (ragi kanji, drumstick sambar, sundal, neer moru), practice safe prenatal yoga and walking routines with short video demonstrations, manage antenatal doctor checkups, maintain medication schedules, generate clinical progress reports, converse with a safety-guardrailed AI educational assistant, and keep trusted family members connected.

---

## 🎨 Visual Identity & South Indian Design Language

MaatruMitra features a balanced blend of **South Indian cultural warmth** and **modern clinical cleanliness**:
- **Primary Color:** Deep South Indian Maroon (`#6B1724`, `#9F233E`)
- **Secondary Color:** Turmeric Yellow (`#EAB308`, `#D97706`)
- **Accent Color:** Fresh Leaf Green (`#15803D`, `#16A34A`)
- **Background:** Warm Cream & Ivory (`#FAF6EE`, `#FFFDF8`)
- **Traditional Accents:** Terracotta (`#C2410C`), Muted Temple Gold (`#D4AF37`)
- **Subtle Cultural Motifs:** Hand-crafted geometric Kolam/Rangoli vector patterns, lotus flower silhouette emblems, Mango leaves (*Maavilai*) toran garlands, and temple border trims.

---

## 🌟 Key Application Features

1. **Split-Screen Authentication & Free Demo Mode**:
   - Desktop split-screen with South Indian branding, mother-baby artwork, and traditional motifs.
   - **1-Click Demo Login** for **Lakshmi** (24 weeks pregnant, pre-seeded with 7 days of rich health logs, meals, routine, appointments, and medication history).
   - Free Mock OTP verification system (`Demo OTP: 123456`) requiring zero paid SMS credentials.
2. **Personalized Maternal Onboarding**:
   - 3-step setup collecting pregnancy week, expected delivery date (EDD), trimester calculation, dietary preferences, food allergies, sleep/wake hours, water targets, treating obstetrician, and designated emergency contacts.
3. **Interactive Main Dashboard**:
   - Cultural greeting (`"Namaste, Lakshmi 🌸"`) with gestational week and EDD tracking.
   - **8 Real-Time Wellness Cards:** Heart Rate, Weight, Blood Pressure, Hydration (+250ml / +500ml quick log buttons), Restorative Sleep, Movement Minutes, Nutrition, and Maternal Mood.
   - **Today's Wellness Routine Checklist:** Pre-populated with daily timings (water, breakfast, iron/calcium supplements, snack, lunch, prenatal walk, dinner, pranayama, sleep) with interactive completion toggle and dynamic circular completion progress (e.g., 82%).
4. **Comprehensive Health Vitals & Recharts Analytics**:
   - Manual vitals logging with instant input validation.
   - Interactive responsive Recharts: Weight Trend, Blood Pressure (Systolic/Diastolic), Hydration Intake, and Prenatal Exercise Duration.
   - Timeline range filtering: **7 Days, 30 Days, 3 Months, 6 Months, and All**.
   - Architectural placeholders for Apple Health, Google Health Connect, and Smart Scales labeled *"Coming Soon"*.
5. **Traditional South Indian Diet Planner**:
   - Meal categories: Breakfast, Morning Snack, Lunch, Evening Snack, Dinner.
   - Curated South Indian nutrient-dense dishes (Steamed Idli & Drumstick Sambar, Ragi Malt with Almonds, Kerala Red Rice with Methi Dal, Beetroot Poriyal & Neer Moru, Chickpea Sundal, Tender Coconut Water).
   - Real-time macro & micronutrient tracking: **Protein, Iron, Calcium, Folate, and Dietary Fiber** with target compliance bars.
   - Add/edit/delete/complete meal items.
6. **Exercise Center with Video Demonstrations**:
   - Categories: Walking, Prenatal Stretching, Prenatal Yoga, Breathing (Nadi Shodhana), Mobility, Pelvic Floor (Butterfly Pose), and Relaxation.
   - **Built-in HTML5 Video Player**: Play/Pause, Volume, Fullscreen, seek bar, and duration timer.
   - **Interactive Guided Workout Session**: Real-time timer and *"Mark as Completed"* button that persists completion logs to the backend and triggers celebratory confetti!
7. **Daily, Weekly, and Monthly Progress Analytics**:
   - **TODAY tab**: Day breakdown, routine progress circle, water goal, exercise minutes, and sleep hours.
   - **WEEK tab**: 7-day average water, total exercise, average sleep, routine completion chart, and consistency score.
   - **MONTH tab**: Long-term physiological stability curves and clinical consistency meters.
8. **Clinical & Wellness Report Generator**:
   - Generates Daily, Weekly, and Monthly comprehensive summaries.
   - Print & PDF download via browser print stylesheets.
   - System Web Share API integration (`navigator.share`).
   - **"Share with Doctor"**: Secure preview modal requiring explicit maternal confirmation before dispatching.
9. **40-Week Pregnancy Journey Timeline**:
   - Interactive horizontal scrubber spanning Week 1 to Week 40 with automatic highlighting of the mother's current week.
   - Baby developmental size comparisons with traditional Indian fruits and seeds (Poppy seed, Chickpea, Amla, Lemon, Pomegranate, Golden Mango, Coconut, Papaya, Watermelon).
   - Maternal bodily changes, sensations, and Garbhini Paricharya wellness tips.
10. **MaatruMitra AI Educational Assistant 🤖**:
    - Conversational chat interface with quick suggestion chips.
    - Dual mode: Uses Gemini API Key if present; otherwise seamlessly activates the built-in intelligent pregnancy wellness knowledge engine!
    - **Strict Medical Safety Guardrails**: Automatic detection of emergency symptoms (bleeding, severe pain, fluid gush, visual changes, severe headache) with high-visibility red alert banners directing mothers to immediate hospital care.
11. **High-Priority Emergency Help Page 🚨**:
    - 1-tap direct call buttons: **Call Doctor (`tel:`)**, **Call Emergency Contact (`tel:`)**, and **Call National Ambulance (108)**.
    - Comprehensive obstetric danger signs checklist and hospital departure bag preparation reminder.
12. **Family & Partner Support Circle**:
    - Add partners, mothers, fathers, or caregivers.
    - Granular sharing permission toggles: Appointments, Milestones, Emergency Alerts, and Progress Reports.
13. **Profile & Account Settings**:
    - Manage personal details, gestational milestones, doctor information, local photo upload preview, password modification, and privacy controls.
14. **Privacy Policy & Data Rights**:
    - Full explanation of collection purpose, bcrypt password hashing, JWT security, data export (JSON), and account deletion.

---

## 🛠️ Technology Stack

| Layer | Technology | Description |
|---|---|---|
| **Frontend** | React 19 + TypeScript | Component-driven UI architecture |
| **Tooling** | Vite 8 | Ultra-fast HMR and bundling |
| **Styling** | Tailwind CSS | Curated South Indian color palette & utilities |
| **Icons** | Lucide React | Clean, accessible vector icons |
| **Data Visualization** | Recharts | Responsive SVG charts for vitals & progress |
| **Routing** | React Router v7 | Protected routes, layout outlets & navigation |
| **HTTP Client** | Axios | Interceptors with automatic Bearer token injection |
| **Backend** | Node.js + Express | RESTful API service with CORS & JSON body parsing |
| **Backend Tooling** | TypeScript + `tsx` | Type-safe execution with hot reload |
| **Authentication** | JWT + bcryptjs | Secure cryptographic session tokens & salted password hashing |
| **Database** | MongoDB / Mongoose | Dual Mode: connects to MongoDB if available, otherwise activates built-in resilient In-Memory storage |

---

## 📂 Project Structure

```text
MaatruMitra/
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   └── common/
│   │   │       ├── Header.tsx         # Maternal top bar & notification center
│   │   │       ├── Sidebar.tsx        # Desktop responsive sidebar
│   │   │       ├── MobileNav.tsx      # Mobile bottom 5-tab navigation
│   │   │       └── KolamMotif.tsx     # South Indian Lotus logo, Kolam, Toran & Trim
│   │   ├── context/
│   │   │   ├── AuthContext.tsx        # Authentication & profile state provider
│   │   │   └── NotificationContext.tsx # Alerts & browser notifications provider
│   │   ├── layouts/
│   │   │   └── AppLayout.tsx          # Master layout with responsive navigation
│   │   ├── pages/
│   │   │   ├── LandingPage.tsx        # Public marketing & feature overview
│   │   │   ├── LoginPage.tsx          # Split-screen login & 1-click Demo User
│   │   │   ├── RegisterPage.tsx       # Account creation with validation
│   │   │   ├── OtpPage.tsx            # Free Demo OTP 123456 verification
│   │   │   ├── OnboardingPage.tsx     # 3-step maternal onboarding wizard
│   │   │   ├── DashboardPage.tsx      # Main dashboard with vitals & routine schedule
│   │   │   ├── HealthPage.tsx         # Manual vitals CRUD & Recharts trends
│   │   │   ├── DietPage.tsx           # South Indian meal plans & nutrient tracking
│   │   │   ├── ExercisePage.tsx       # Exercise catalog, video player & timer
│   │   │   ├── ProgressPage.tsx       # Today / Week / Month analytics
│   │   │   ├── AppointmentsPage.tsx   # Antenatal checkups scheduler
│   │   │   ├── MedicationsPage.tsx    # Supplement reminders & Taken/Skipped logging
│   │   │   ├── ReportsPage.tsx        # Printable report generator & doctor share
│   │   │   ├── JourneyPage.tsx        # 40-week timeline with Indian fruit comparisons
│   │   │   ├── AssistantPage.tsx      # AI Educational Assistant 🤖 with safety guards
│   │   │   ├── EmergencyPage.tsx      # High-visibility 1-click call & warning signs
│   │   │   ├── FamilyPage.tsx         # Support circle with granular permissions
│   │   │   ├── ProfilePage.tsx        # Profile editing, EDD & photo preview
│   │   │   └── PrivacyPage.tsx        # Data protection policy & data export
│   │   ├── services/
│   │   │   ├── api.ts                 # Axios instance with auth interceptor
│   │   │   └── notificationService.ts # Web notifications dispatcher
│   │   ├── types/
│   │   │   └── index.ts               # Shared TypeScript data models
│   │   ├── App.tsx                    # Route definitions & protected route guards
│   │   ├── index.css                  # Tailwind directives & South Indian styling
│   │   └── main.tsx                   # React root entry point
│   ├── index.html
│   ├── tailwind.config.js
│   ├── tsconfig.json
│   └── package.json
│
├── backend/
│   ├── src/
│   │   ├── config/
│   │   │   └── db.ts                  # Database manager with resilient in-memory fallback
│   │   ├── controllers/
│   │   │   ├── authController.ts
│   │   │   ├── profileController.ts
│   │   │   ├── healthController.ts
│   │   │   ├── dietController.ts
│   │   │   ├── exerciseController.ts
│   │   │   ├── appointmentController.ts
│   │   │   ├── medicationController.ts
│   │   │   ├── notificationController.ts
│   │   │   ├── reportController.ts
│   │   │   ├── familyController.ts
│   │   │   └── assistantController.ts
│   │   ├── middleware/
│   │   │   └── auth.ts                # Bearer JWT verification middleware
│   │   ├── models/
│   │   │   ├── types.ts               # Server TypeScript interfaces
│   │   │   └── schemas.ts             # Mongoose schemas for MongoDB
│   │   ├── routes/
│   │   │   ├── authRoutes.ts
│   │   │   ├── profileRoutes.ts
│   │   │   ├── healthRoutes.ts
│   │   │   ├── dietRoutes.ts
│   │   │   ├── exerciseRoutes.ts
│   │   │   ├── appointmentRoutes.ts
│   │   │   ├── medicationRoutes.ts
│   │   │   ├── notificationRoutes.ts
│   │   │   ├── reportRoutes.ts
│   │   │   ├── familyRoutes.ts
│   │   │   └── assistantRoutes.ts
│   │   ├── services/
│   │   │   ├── aiService.ts           # Dual-mode AI knowledge engine & guardrails
│   │   │   ├── databaseService.ts     # Unified CRUD operations & data access layer
│   │   │   ├── notificationService.ts # Scheduled reminders generator
│   │   │   └── seedData.ts            # Pre-seeded Lakshmi 24-week dataset
│   │   └── server.ts                  # Express server entry point
│   ├── tsconfig.json
│   └── package.json
│
├── .env.example
├── .gitignore
├── README.md
└── package.json
```

---

## ⚡ Getting Started & Running Locally

### Prerequisites
- **Node.js** (v18 or higher recommended, tested on v24.21.0)
- **npm** (v9 or higher, tested on v11.19.0)
- *Optional:* MongoDB instance (Local or Atlas free tier). If not configured, MaatruMitra automatically runs in **Zero-Setup Demo Mode** using its built-in in-memory reactive database!

---

### Step 1: Install Dependencies

From the project root:
```bash
# Install backend dependencies
cd backend
npm install

# Install frontend dependencies
cd ../frontend
npm install
cd ..
```

Or using root script:
```bash
npm run install:all
```

---

### Step 2: Configure Environment (Optional)

Create a `.env` file in the project root or in `backend/.env` (refer to `.env.example`):
```env
PORT=5000
CLIENT_URL=http://localhost:5173
JWT_SECRET=maatrumitra_super_secure_jwt_secret_dev_key_2026

# Optional: Add MongoDB connection string (leave empty for automatic In-Memory fallback)
MONGODB_URI=

# Optional: Add Gemini / AI API key (leave empty for intelligent local knowledge engine)
AI_API_KEY=
```

---

### Step 3: Run the Application

In terminal 1 (Backend):
```bash
cd backend
npm run dev
```
*(Backend runs on `http://localhost:5000`)*

In terminal 2 (Frontend):
```bash
cd frontend
npm run dev
```
*(Frontend runs on `http://localhost:5173`)*

Or run both concurrently from the root directory:
```bash
npm run dev
```

Open your browser at `http://localhost:5173`.

---

## 🔑 Demo Account Credentials

| Attribute | Details |
|---|---|
| **Email** | `demo@maatrumitra.com` |
| **Password** | `Demo@123` |
| **One-Click Login** | Click **"Continue as Demo User (Lakshmi)"** on the login screen |
| **Name** | Lakshmi Sundaram |
| **Gestational Age** | 24 Weeks (Second Trimester) |
| **Expected Delivery Date** | January 15, 2027 |
| **Free Demo OTP** | `123456` |

---

## 📡 REST API Reference

### Authentication (`/api/auth`)
- `POST /api/auth/register` — Create a new account & generate demo OTP.
- `POST /api/auth/login` — Authenticate user and issue JWT.
- `POST /api/auth/verify-otp` — Verify code (`123456`) and activate account.
- `POST /api/auth/forgot-password` — Password recovery dispatcher.
- `GET /api/auth/me` — Retrieve authenticated user profile.

### Pregnancy Profile (`/api/pregnancy`)
- `GET /api/pregnancy/profile` — Fetch maternal profile and EDD.
- `POST /api/pregnancy/profile` — Initialize onboarding data.
- `PUT /api/pregnancy/profile` — Update gestational milestones and contacts.

### Health Logs (`/api/health`)
- `GET /api/health?days=N` — Retrieve past N days of health vitals.
- `POST /api/health` — Record today's vitals (weight, HR, BP, glucose, water, sleep, mood).
- `GET /api/health/:id` — Fetch single record.
- `PUT /api/health/:id` — Update existing health record.
- `DELETE /api/health/:id` — Remove record.

### Diet Planner (`/api/diet`)
- `GET /api/diet?date=YYYY-MM-DD` — Retrieve curated meals and day logs.
- `POST /api/diet/log` — Log a meal.
- `PUT /api/diet/log/:id` — Toggle meal completion or modify details.
- `DELETE /api/diet/log/:id` — Remove meal entry.

### Prenatal Movement (`/api/exercises`)
- `GET /api/exercises` — Fetch curated exercise routines with videos and safety info.
- `POST /api/exercises/log` — Record workout completion.
- `GET /api/exercises/logs` — Retrieve exercise history.

### Appointments (`/api/appointments`)
- `GET /api/appointments` — Fetch scheduled checkups.
- `POST /api/appointments` — Book new antenatal appointment.
- `PUT /api/appointments/:id` — Update appointment details or status.
- `DELETE /api/appointments/:id` — Cancel/remove appointment.

### Medications (`/api/medications`)
- `GET /api/medications` — Fetch supplement reminders and today's status.
- `POST /api/medications` — Add new supplement reminder.
- `PUT /api/medications/:id` — Update reminder details.
- `DELETE /api/medications/:id` — Delete reminder.
- `POST /api/medications/:id/log` — Record status (`taken`, `skipped`, `remind_later`).

### Notifications (`/api/notifications`)
- `GET /api/notifications` — Retrieve alerts and unread count.
- `PUT /api/notifications/:id/read` — Mark notification read.
- `PUT /api/notifications/read-all` — Mark all read.
- `DELETE /api/notifications/:id` — Remove notification.
- `POST /api/notifications/trigger-demo` — Simulate an automated wellness reminder.

### Reports (`/api/reports`)
- `POST /api/reports/generate` — Generate daily, weekly, or monthly report.
- `GET /api/reports` — Fetch historical generated reports.

### Family Mode (`/api/family`)
- `GET /api/family` — Fetch linked support members.
- `POST /api/family` — Link partner or family member.
- `PUT /api/family/:id` — Update granular sharing permissions.
- `DELETE /api/family/:id` — Unlink family member.

### AI Assistant (`/api/assistant`)
- `POST /api/assistant/chat` — Conversational query with safety detection and educational suggestions.

---

## ⚖️ Health & Medical Safety Disclaimers

> [!IMPORTANT]
> **MaatruMitra is an educational and wellness tracking application. It is NOT a medical diagnostic device.**
> - It does not provide medical diagnoses, prescribe treatments, or alter medication dosages.
> - Any nutrition, exercise, or lifestyle suggestions are general educational guidance rooted in maternal wellness traditions.
> - If an expectant mother experiences urgent warning symptoms (vaginal bleeding, acute abdominal pain, fluid loss, visual disturbances, or lack of fetal movement), she must immediately consult her obstetrician or proceed to an emergency medical facility.

---

## 📜 License
This project is open-source and developed for the hackathon demonstration under the **MIT License**.
