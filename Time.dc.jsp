<!doctype html>
<html lang="el">
<head>
<meta charset="utf-8">
<title>LifeAdmin — Διαχείριση Χρόνου</title>
<script src="./vendor/react.js"></script>
<script src="./vendor/react-dom.js"></script>
<script src="./support.js"></script>
</head>
<body>
<x-dc>
<helmet>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet">
<style>
body{margin:0;background:#F5F6FA}
a{color:#4B3FC9}a:hover{color:#3A2FA8}
.nav-link{display:flex;align-items:center;gap:12px;padding:12px 14px;border-radius:10px;text-decoration:none;color:#3F4358;font-size:15px;font-weight:500;min-height:44px;box-sizing:border-box}
.nav-link:hover{background:#F0EEFF;color:#3A2FA8}
.day-cell:hover{border-color:#B9B2F5 !important}
.btn-primary:hover{background:#3A2FA8 !important}
.field{display:flex;flex-direction:column;gap:6px;font-size:14px;font-weight:600;color:#3F4358}
.field input,.field select,.field textarea{font:inherit;font-weight:400;font-size:15px;color:#1E1B3A;border:1px solid #D5D8E3;border-radius:10px;padding:10px 12px;min-height:44px;box-sizing:border-box;background:#FFFFFF}
.field input:focus,.field select:focus,.field textarea:focus{outline:2px solid #4B3FC9;outline-offset:1px;border-color:#4B3FC9}
</style>
</helmet>
<div style="position: relative; display: flex; flex-wrap: wrap; min-height: 100vh; font-family: Inter, system-ui, sans-serif; color: #1E1B3A; background: #F5F6FA">

  <nav aria-label="Κύριο μενού" style="flex: 1 1 220px; max-width: 260px; background: #FFFFFF; border-right: 1px solid #E6E8F0; padding: 24px 16px; box-sizing: border-box; display: flex; flex-direction: column; gap: 28px">
    <div style="display: flex; align-items: center; gap: 10px; padding: 0 8px">
      <div style="width: 36px; height: 36px; border-radius: 10px; background: #4B3FC9; display: flex; align-items: center; justify-content: center">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="5" width="18" height="16" rx="3"></rect><path d="M8 3v4M16 3v4M3 10h18"></path><path d="M9 15l2 2 4-4"></path></svg>
      </div>
      <span style="font-size: 20px; font-weight: 700; letter-spacing: -0.3px">LifeAdmin</span>
    </div>
    <div style="display: flex; flex-direction: column; gap: 4px">
      <a class="nav-link" href="/ismgroup6/Main.dc.jsp">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M3 11l9-7 9 7v9a1 1 0 0 1-1 1h-5v-6H9v6H4a1 1 0 0 1-1-1z"></path></svg>
        Αρχική
      </a>
      <a class="nav-link" href="/ismgroup6/Time.dc.jsp" aria-current="page" style="background: #ECE9FF; color: #3A2FA8">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="5" width="18" height="16" rx="3"></rect><path d="M8 3v4M16 3v4M3 10h18"></path></svg>
        Διαχείριση Χρόνου
      </a>
      <a class="nav-link" href="/ismgroup6/Finance.dc.jsp">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="6" width="18" height="14" rx="3"></rect><path d="M3 10h18M16 15h2"></path></svg>
        Διαχείριση Οικονομικών
      </a>
    </div>
    <div style="margin-top: auto; display: flex; flex-direction: column; gap: 4px; border-top: 1px solid #E6E8F0; padding-top: 16px">
      <a class="nav-link" href="/ismgroup6/Profile.dc.jsp">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" aria-hidden="true"><circle cx="12" cy="8" r="4"></circle><path d="M4 21c1.5-4 4.5-6 8-6s6.5 2 8 6"></path></svg>
        Προφίλ
      </a>
      <a class="nav-link" href="/ismgroup6/Logout.dc.jsp">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M15 4h3a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2h-3M10 17l5-5-5-5M15 12H4"></path></svg>
        Αποσύνδεση
      </a>
    </div>
  </nav>

  <main style="flex: 999 1 560px; min-width: 0; padding: 32px 40px 48px; box-sizing: border-box">
    <div style="max-width: 1120px; margin: 0 auto; display: flex; flex-direction: column; gap: 24px">

      <header style="display: flex; flex-wrap: wrap; align-items: center; justify-content: space-between; gap: 16px">
        <h1 style="margin: 0; font-size: 28px; font-weight: 700; letter-spacing: -0.4px">Διαχείριση Χρόνου</h1>
        <button type="button" class="btn-primary" onClick="{{openForm}}" style="display: inline-flex; align-items: center; gap: 8px; height: 44px; padding: 0 18px; border-radius: 12px; border: 0; background: #4B3FC9; color: #FFFFFF; font: inherit; font-size: 15px; font-weight: 600; cursor: pointer">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" aria-hidden="true"><path d="M12 5v14M5 12h14"></path></svg>
          Νέα δραστηριότητα
        </button>
      </header>

      <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start">

        <!-- Ημερολόγιο -->
        <section aria-label="Ημερολόγιο Μαρτίου 2025" style="flex: 2 1 560px; min-width: 0; background: #FFFFFF; border-radius: 20px; border: 1px solid #E6E8F0; padding: 20px 24px 24px; box-sizing: border-box">
          <div style="display: flex; flex-wrap: wrap; align-items: center; justify-content: space-between; gap: 12px; margin-bottom: 16px">
            <div style="display: flex; align-items: center; gap: 8px">
              <button type="button" aria-label="Προηγούμενος μήνας" style="width: 44px; height: 44px; border-radius: 12px; border: 1px solid #E6E8F0; background: #FFFFFF; cursor: pointer; color: #3F4358; display: flex; align-items: center; justify-content: center">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M15 18l-6-6 6-6"></path></svg>
              </button>
              <h2 style="margin: 0 8px; font-size: 20px; font-weight: 700; min-width: 140px; text-align: center">Μάρτιος 2025</h2>
              <button type="button" aria-label="Επόμενος μήνας" style="width: 44px; height: 44px; border-radius: 12px; border: 1px solid #E6E8F0; background: #FFFFFF; cursor: pointer; color: #3F4358; display: flex; align-items: center; justify-content: center">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M9 6l6 6-6 6"></path></svg>
              </button>
            </div>
            <div role="group" aria-label="Προβολή" style="display: inline-flex; background: #F0F1F6; border-radius: 12px; padding: 4px; gap: 4px">
              <sc-for list="{{views}}" as="v" hint-placeholder-count="3">
                <button type="button" onClick="{{v.pick}}" aria-pressed="{{v.on}}" style="height: 36px; padding: 0 16px; border-radius: 9px; border: 0; font: inherit; font-size: 14px; font-weight: 600; cursor: pointer; background: {{v.bg}}; color: {{v.fg}}; box-shadow: {{v.shadow}}">{{v.label}}</button>
              </sc-for>
            </div>
          </div>

          <div style="display: grid; grid-template-columns: repeat(7, minmax(0, 1fr)); gap: 6px; margin-bottom: 6px">
            <sc-for list="{{weekdays}}" as="w" hint-placeholder-count="7">
              <div style="font-size: 13px; font-weight: 600; color: #5F6478; text-align: center; padding: 4px 0">{{w}}</div>
            </sc-for>
          </div>
          <div style="display: grid; grid-template-columns: repeat(7, minmax(0, 1fr)); gap: 6px">
            <sc-for list="{{cells}}" as="c" hint-placeholder-count="35">
              <sc-if value="{{c.blank}}" hint-placeholder-val="{{ false }}">
                <div style="min-height: 92px"></div>
              </sc-if>
              <sc-if value="{{c.real}}" hint-placeholder-val="{{ true }}">
                <button type="button" class="day-cell" onClick="{{c.pick}}" aria-label="{{c.aria}}" aria-pressed="{{c.selected}}" style="min-height: 92px; padding: 8px; border-radius: 12px; border: 2px solid {{c.border}}; background: {{c.bg}}; display: flex; flex-direction: column; align-items: stretch; gap: 4px; cursor: pointer; font: inherit; text-align: left; min-width: 0">
                  <span style="font-size: 14px; font-weight: 700; color: {{c.numColor}}; width: 26px; height: 26px; border-radius: 13px; display: flex; align-items: center; justify-content: center; background: {{c.numBg}}">{{c.day}}</span>
                  <sc-for list="{{c.chips}}" as="ch" hint-placeholder-count="1">
                    <span style="display: block; font-size: 12px; font-weight: 600; padding: 2px 6px; border-radius: 6px; background: {{ch.bg}}; color: {{ch.fg}}; white-space: nowrap; overflow: hidden; text-overflow: ellipsis">{{ch.title}}</span>
                  </sc-for>
                  <sc-if value="{{c.hasMore}}" hint-placeholder-val="{{ false }}">
                    <span style="font-size: 12px; color: #5F6478; padding-left: 4px">+{{c.more}} ακόμη</span>
                  </sc-if>
                </button>
              </sc-if>
            </sc-for>
          </div>
        </section>

        <!-- Η επιλεγμένη ημέρα -->
        <aside aria-labelledby="day-title" style="flex: 1 1 300px; min-width: 0; display: flex; flex-direction: column; gap: 24px">
          <section style="background: #FFFFFF; border-radius: 20px; border: 1px solid #E6E8F0; padding: 24px; display: flex; flex-direction: column; gap: 12px">
            <div style="display: flex; align-items: center; justify-content: space-between; gap: 12px">
              <div>
                <p style="margin: 0; font-size: 13px; font-weight: 600; color: #5F6478; text-transform: uppercase; letter-spacing: 0.6px">{{selWeekday}}</p>
                <h2 id="day-title" style="margin: 2px 0 0; font-size: 22px; font-weight: 700">{{selDay}} Μαρτίου</h2>
              </div>
              <button type="button" onClick="{{openForm}}" aria-label="Προσθήκη δραστηριότητας σε αυτή την ημέρα" class="btn-primary" style="width: 48px; height: 48px; border-radius: 24px; border: 0; background: #4B3FC9; color: #FFFFFF; display: flex; align-items: center; justify-content: center; cursor: pointer">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.4" stroke-linecap="round" aria-hidden="true"><path d="M12 5v14M5 12h14"></path></svg>
              </button>
            </div>
            <sc-if value="{{noEvents}}" hint-placeholder-val="{{ false }}">
              <div style="padding: 24px 8px; text-align: center; color: #5F6478; font-size: 15px">Δεν υπάρχει τίποτα για αυτή την ημέρα.<br>Πάτα <strong style="color: #4B3FC9">+</strong> για να προσθέσεις.</div>
            </sc-if>
            <sc-for list="{{selEvents}}" as="e" hint-placeholder-count="3">
              <div style="display: flex; gap: 12px; padding: 12px; border-radius: 12px; background: #F7F8FB">
                <span style="width: 4px; border-radius: 2px; background: {{e.color}}; flex: none"></span>
                <div style="flex: 1; min-width: 0; display: flex; flex-direction: column; gap: 2px">
                  <span style="font-size: 15px; font-weight: 600">{{e.title}}</span>
                  <span style="font-size: 13px; color: #5F6478">{{e.time}} · {{e.cat}}</span>
                  <sc-if value="{{e.recurring}}" hint-placeholder-val="{{ false }}">
                    <span style="display: inline-flex; align-items: center; gap: 4px; font-size: 12px; color: #4B3FC9; font-weight: 600">
                      <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M17 2l4 4-4 4"></path><path d="M3 11v-1a4 4 0 0 1 4-4h14M7 22l-4-4 4-4"></path><path d="M21 13v1a4 4 0 0 1-4 4H3"></path></svg>
                      {{e.rule}}
                    </span>
                  </sc-if>
                </div>
                <span style="font-size: 14px; font-weight: 700; white-space: nowrap">{{e.costLabel}}</span>
              </div>
            </sc-for>
            <sc-if value="{{hasCost}}" hint-placeholder-val="{{ true }}">
              <div style="display: flex; justify-content: space-between; font-size: 14px; padding: 8px 4px 0; border-top: 1px solid #F0F1F5; color: #3F4358">
                <span>Κόστος ημέρας</span><strong>{{dayCost}}</strong>
              </div>
            </sc-if>
          </section>

          <section aria-labelledby="next-title" style="background: #FFFFFF; border-radius: 20px; border: 1px solid #E6E8F0; padding: 24px; display: flex; flex-direction: column; gap: 4px">
            <h2 id="next-title" style="margin: 0 0 8px; font-size: 18px; font-weight: 700">Επερχόμενα</h2>
            <sc-for list="{{upcoming}}" as="u" hint-placeholder-count="3">
              <div style="display: flex; align-items: center; gap: 10px; padding: 8px 0">
                <span style="width: 10px; height: 10px; border-radius: 5px; background: {{u.color}}; flex: none"></span>
                <span style="flex: 1; font-size: 15px; font-weight: 500">{{u.title}}</span>
                <span style="font-size: 13px; color: #5F6478">{{u.when}}</span>
              </div>
            </sc-for>
          </section>
        </aside>
      </div>
    </div>
  </main>

  <!-- Φόρμα «Νέα δραστηριότητα» -->
  <sc-if value="{{showForm}}" hint-placeholder-val="{{ false }}">
    <div style="position: absolute; inset: 0; background: rgba(30,27,58,0.45); display: none; align-items: flex-start; justify-content: center; padding: 48px 16px; box-sizing: border-box; z-index: 10">
      <form role="dialog" aria-modal="true" aria-labelledby="form-title" onSubmit="{{save}}" style="width: 100%; max-width: 560px; background: #FFFFFF; border-radius: 20px; padding: 28px; box-sizing: border-box; display: flex; flex-direction: column; gap: 18px; box-shadow: 0 20px 60px rgba(30,27,58,0.25)">
        <div style="display: flex; justify-content: space-between; align-items: center">
          <h2 id="form-title" style="margin: 0; font-size: 22px; font-weight: 700">Νέα δραστηριότητα</h2>
          <button type="button" onClick="{{closeForm}}" aria-label="Κλείσιμο" style="width: 44px; height: 44px; border-radius: 12px; border: 0; background: #F3F4F8; cursor: pointer; color: #3F4358; display: flex; align-items: center; justify-content: center">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" aria-hidden="true"><path d="M6 6l12 12M18 6L6 18"></path></svg>
          </button>
        </div>

        <label class="field">Τίτλος
          <input type="text" name="title" placeholder="π.χ. Κομμωτήριο" required="">
        </label>

        <div class="field" role="group" aria-labelledby="cat-lbl">
          <span id="cat-lbl">Κατηγορία</span>
          <div style="display: flex; flex-wrap: wrap; gap: 8px">
            <sc-for list="{{catChips}}" as="k" hint-placeholder-count="5">
              <button type="button" onClick="{{k.pick}}" aria-pressed="{{k.on}}" style="display: inline-flex; align-items: center; gap: 6px; height: 40px; padding: 0 14px; border-radius: 20px; border: 2px solid {{k.border}}; background: {{k.bg}}; font: inherit; font-size: 14px; font-weight: 600; color: #1E1B3A; cursor: pointer">
                <span style="width: 10px; height: 10px; border-radius: 5px; background: {{k.color}}"></span>{{k.name}}
              </button>
            </sc-for>
          </div>
        </div>

        <div style="display: grid; grid-template-columns: repeat(3, minmax(0, 1fr)); gap: 12px">
          <label class="field">Ημερομηνία
            <input type="date" name="start_date" defaultValue="{{formDate}}">
          </label>
          <label class="field">Ώρα
            <input type="time" name="start_time" defaultValue="10:00">
          </label>
          <label class="field">Διάρκεια
            <select defaultValue="60" name="duration_minutes">
              <option value="30">30 λεπτά</option>
              <option value="60">1 ώρα</option>
              <option value="120">2 ώρες</option>
            </select>
          </label>
        </div>

        <div class="field" role="group" aria-labelledby="rep-lbl">
          <span id="rep-lbl">Πόσο συχνά;</span>
          <div style="display: inline-flex; background: #F0F1F6; border-radius: 12px; padding: 4px; gap: 4px; align-self: flex-start">
            <sc-for list="{{repOpts}}" as="r" hint-placeholder-count="2">
              <button type="button" onClick="{{r.pick}}" aria-pressed="{{r.on}}" style="height: 38px; padding: 0 16px; border-radius: 9px; border: 0; font: inherit; font-size: 14px; font-weight: 600; cursor: pointer; background: {{r.bg}}; color: {{r.fg}}; box-shadow: {{r.shadow}}">{{r.label}}</button>
            </sc-for>
          </div>
          <sc-if value="{{isRecurring}}" hint-placeholder-val="{{ false }}">
            <div style="display: grid; grid-template-columns: repeat(3, minmax(0, 1fr)); gap: 12px; margin-top: 6px">
              <label class="field">Επανάληψη
                <select defaultValue="WEEKLY" name="frequency"><option value="WEEKLY">Κάθε εβδομάδα</option><option value="DAILY">Κάθε μέρα</option><option value="MONTHLY">Κάθε μήνα</option></select>
              </label>
              <label class="field">Ημέρα
                <select defaultValue="3" name="day_of_week"><option value="1">Δευτέρα</option><option value="2">Τρίτη</option><option value="3">Τετάρτη</option><option value="4">Πέμπτη</option><option value="5">Παρασκευή</option><option value="6">Σάββατο</option><option value="7">Κυριακή</option></select>
              </label>
              <label class="field">Έως (προαιρετικό)
                <input type="date" name="end_date">
              </label>
            </div>
          </sc-if>
        </div>

        <div style="display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 12px">
          <label class="field">Κόστος (προαιρετικό)
            <input type="number" name="estimated_cost" min="0" step="0.5" placeholder="€ 0,00">
          </label>
          <label class="field">Υπενθύμιση
            <select defaultValue="60" name="reminder_minutes"><option value="">Καμία</option><option value="15">15 λεπτά πριν</option><option value="60">1 ώρα πριν</option><option value="1440">1 μέρα πριν</option></select>
          </label>
        </div>
        <p style="margin: -8px 0 0; font-size: 13px; color: #5F6478">Αν βάλεις κόστος, θα μπει αυτόματα και στα έξοδα του μήνα.</p>

        <div style="display: flex; justify-content: flex-end; gap: 12px; margin-top: 4px">
          <button type="button" onClick="{{closeForm}}" style="height: 44px; padding: 0 20px; border-radius: 12px; border: 1px solid #D5D8E3; background: #FFFFFF; font: inherit; font-size: 15px; font-weight: 600; color: #3F4358; cursor: pointer">Ακύρωση</button>
          <button type="submit" class="btn-primary" style="height: 44px; padding: 0 24px; border-radius: 12px; border: 0; background: #4B3FC9; color: #FFFFFF; font: inherit; font-size: 15px; font-weight: 600; cursor: pointer">Αποθήκευση</button>
        </div>
      </form>
    </div>
  </sc-if>
</div>
</x-dc>
<script type="text/x-dc" data-dc-script data-props='{"$preview":{"width":1440,"height":1000}}'>
class Component extends DCLogic {
  constructor(p) { super(p); this.state = { sel: 12, view: 'month', form: false, rec: 'weekly', cat: 'Υγεία' }; }
  renderVals() {
    const CAT = { 'Σχολή': ['#2F80ED', '#E6F0FD', '#1F5FB8'], 'Υγεία': ['#159A8C', '#E1F4F1', '#0E6E64'], 'Συνδρομές': ['#D94F8C', '#FBE8F1', '#A8306A'],
                  'Προσωπικά': ['#E8833A', '#FDEEDF', '#A3531A'], 'Εργασία': ['#4B3FC9', '#ECE9FF', '#3A2FA8'] };
    const ev = {};
    const add = (d, e) => (ev[d] = ev[d] || []).push(e);
    const mon = [3, 10, 17, 24, 31], wed = [5, 12, 19, 26];
    [3,4,5,6,10,11,12,13,17,18,19,20,24,25,26,27,31].forEach(d => add(d, { title: 'Σχολή', time: '09:00 – 17:00', cat: 'Σχολή', cost: 0, recurring: true, rule: 'Δευτέρα έως Πέμπτη', t: 9 }));
    [...mon, ...wed].forEach(d => add(d, { title: 'Γυμναστήριο', time: '08:00 – 09:00', cat: 'Υγεία', cost: 0, recurring: true, rule: 'Κάθε Δευτέρα & Τετάρτη', t: 8 }));
    wed.forEach(d => add(d, { title: 'Ψυχολόγος', time: '18:00 – 19:00', cat: 'Υγεία', cost: 40, recurring: true, rule: 'Κάθε Τετάρτη έως 30/06', t: 18 }));
    add(12, { title: 'Μελέτη', time: '20:00 – 21:00', cat: 'Σχολή', cost: 0, t: 20 });
    add(9, { title: 'Κομμωτήριο', time: '11:00 – 12:00', cat: 'Προσωπικά', cost: 15, t: 11 });
    add(19, { title: 'Οδοντίατρος', time: '11:00 – 11:30', cat: 'Υγεία', cost: 35, t: 11 });
    add(17, { title: 'Πληρωμή κινητού', time: 'Όλη μέρα', cat: 'Συνδρομές', cost: 25, recurring: true, rule: 'Κάθε μήνα', t: 0 });
    add(25, { title: 'Internet', time: 'Όλη μέρα', cat: 'Συνδρομές', cost: 30, recurring: true, rule: 'Κάθε μήνα', t: 0 });
    add(22, { title: 'Γενέθλια Ελένης', time: '20:30', cat: 'Προσωπικά', cost: 0, t: 20 });
    add(7, { title: 'Βάρδια', time: '17:00 – 22:00', cat: 'Εργασία', cost: 0, t: 17 });
    add(14, { title: 'Βάρδια', time: '17:00 – 22:00', cat: 'Εργασία', cost: 0, t: 17 });
    Object.values(ev).forEach(a => a.sort((x, y) => x.t - y.t));

    const WD = ['Κυριακή', 'Δευτέρα', 'Τρίτη', 'Τετάρτη', 'Πέμπτη', 'Παρασκευή', 'Σάββατο'];
    const sel = this.state.sel, TODAY = 12;
    const cells = [];
    for (let i = 0; i < 5; i++) cells.push({ blank: true, real: false, chips: [] });
    for (let d = 1; d <= 31; d++) {
      const list = ev[d] || [];
      const isSel = d === sel, isToday = d === TODAY;
      const shown = list.filter(e => e.title !== 'Σχολή').concat(list.filter(e => e.title === 'Σχολή')).slice(0, 2);
      cells.push({ blank: false, real: true, day: d, selected: isSel,
        aria: d + ' Μαρτίου, ' + (list.length ? list.length + ' δραστηριότητες' : 'καμία δραστηριότητα'),
        border: isSel ? '#4B3FC9' : '#EEF0F5', bg: isSel ? '#F7F6FF' : '#FFFFFF',
        numBg: isToday ? '#4B3FC9' : 'transparent', numColor: isToday ? '#FFFFFF' : '#1E1B3A',
        chips: shown.map(e => ({ title: e.title, bg: CAT[e.cat][1], fg: CAT[e.cat][2] })),
        hasMore: list.length > 2, more: list.length - 2,
        pick: () => this.setState({ sel: d }) });
    }
    while (cells.length % 7) cells.push({ blank: true, real: false, chips: [] });

    const selList = (ev[sel] || []).map(e => ({ ...e, color: CAT[e.cat][0], costLabel: e.cost ? e.cost + ' €' : '', recurring: !!e.recurring }));
    const dayCostN = selList.reduce((a, e) => a + e.cost, 0);
    const seg = (on) => ({ bg: on ? '#FFFFFF' : 'transparent', fg: on ? '#1E1B3A' : '#5F6478', shadow: on ? '0 1px 3px rgba(30,27,58,0.15)' : 'none' });

    return {
      weekdays: ['Δευ', 'Τρί', 'Τετ', 'Πέμ', 'Παρ', 'Σάβ', 'Κυρ'], cells,
      views: [['day', 'Ημέρα'], ['week', 'Εβδομάδα'], ['month', 'Μήνας']].map(([k, label]) => ({ label, on: this.state.view === k, ...seg(this.state.view === k), pick: () => this.setState({ view: k }) })),
      selDay: sel, selWeekday: WD[new Date(2025, 2, sel).getDay()],
      selEvents: selList, noEvents: selList.length === 0, hasCost: dayCostN > 0, dayCost: dayCostN + ' €',
      upcoming: [
        { title: 'Πληρωμή κινητού', when: '17/03', color: CAT['Συνδρομές'][0] },
        { title: 'Οδοντίατρος', when: '19/03 · 11:00', color: CAT['Υγεία'][0] },
        { title: 'Γενέθλια Ελένης', when: '22/03 · 20:30', color: CAT['Προσωπικά'][0] },
        { title: 'Internet', when: '25/03', color: CAT['Συνδρομές'][0] }],
      showForm: this.state.form, formDate: '2025-03-' + String(sel).padStart(2, '0'),
      openForm: () => this.setState({ form: true }), closeForm: () => this.setState({ form: false }),
      save: (e) => { e.preventDefault(); this.setState({ form: false }); },
      isRecurring: this.state.rec === 'weekly',
      repOpts: [['once', 'Μία φορά'], ['weekly', 'Σταθερά (επαναλαμβάνεται)']].map(([k, label]) => ({ label, on: this.state.rec === k, ...seg(this.state.rec === k), pick: () => this.setState({ rec: k }) })),
      catChips: Object.keys(CAT).map(name => { const on = this.state.cat === name; return { name, on, color: CAT[name][0], bg: on ? CAT[name][1] : '#FFFFFF', border: on ? CAT[name][0] : '#E1E4EC', pick: () => this.setState({ cat: name }) }; })
    };
  }
}
</script>
</body>
</html>
