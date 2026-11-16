<!doctype html>
<html lang="el">
<head>
<meta charset="utf-8">
<title>LifeAdmin — Διαχείριση Οικονομικών</title>
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
.btn-primary:hover{background:#3A2FA8 !important}
.row:hover{background:#FAFAFE}
.field{display:flex;flex-direction:column;gap:6px;font-size:14px;font-weight:600;color:#3F4358}
.field input,.field select{font:inherit;font-weight:400;font-size:15px;color:#1E1B3A;border:1px solid #D5D8E3;border-radius:10px;padding:10px 12px;min-height:44px;box-sizing:border-box;background:#FFFFFF}
.field input:focus,.field select:focus{outline:2px solid #4B3FC9;outline-offset:1px;border-color:#4B3FC9}
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
      <a class="nav-link" href="/ismgroup6/Time.dc.jsp">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="5" width="18" height="16" rx="3"></rect><path d="M8 3v4M16 3v4M3 10h18"></path></svg>
        Διαχείριση Χρόνου
      </a>
      <a class="nav-link" href="/ismgroup6/Finance.dc.jsp" aria-current="page" style="background: #ECE9FF; color: #3A2FA8">
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
        <div style="display: flex; flex-wrap: wrap; align-items: center; gap: 16px">
          <h1 style="margin: 0; font-size: 28px; font-weight: 700; letter-spacing: -0.4px">Διαχείριση Οικονομικών</h1>
          <div style="display: inline-flex; align-items: center; gap: 4px; background: #FFFFFF; border: 1px solid #E6E8F0; border-radius: 12px; padding: 2px">
            <button type="button" aria-label="Προηγούμενος μήνας" style="width: 40px; height: 40px; border: 0; background: transparent; cursor: pointer; color: #3F4358; display: flex; align-items: center; justify-content: center; border-radius: 10px">
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M15 18l-6-6 6-6"></path></svg>
            </button>
            <span style="font-size: 15px; font-weight: 600; padding: 0 6px">Μάρτιος 2025</span>
            <button type="button" aria-label="Επόμενος μήνας" style="width: 40px; height: 40px; border: 0; background: transparent; cursor: pointer; color: #3F4358; display: flex; align-items: center; justify-content: center; border-radius: 10px">
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M9 6l6 6-6 6"></path></svg>
            </button>
          </div>
        </div>
        <button type="button" class="btn-primary" onClick="{{openExpense}}" style="display: inline-flex; align-items: center; gap: 8px; height: 44px; padding: 0 18px; border-radius: 12px; border: 0; background: #4B3FC9; color: #FFFFFF; font: inherit; font-size: 15px; font-weight: 600; cursor: pointer">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" aria-hidden="true"><path d="M12 5v14M5 12h14"></path></svg>
          Νέο έξοδο
        </button>
      </header>

      <!-- Σύνοψη μήνα -->
      <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 16px">
        <div style="background: #4B3FC9; color: #FFFFFF; border-radius: 18px; padding: 20px 22px; display: flex; flex-direction: column; gap: 10px">
          <span style="font-size: 14px; color: #DCD8FF; font-weight: 500">Υπόλοιπο</span>
          <span style="font-size: 34px; font-weight: 700; letter-spacing: -0.8px">405,00 €</span>
          <div style="height: 8px; border-radius: 4px; background: rgba(255,255,255,0.25); overflow: hidden"><div style="width: 66%; height: 100%; background: #FFFFFF"></div></div>
          <span style="font-size: 13px; color: #E7E4FF">Ξόδεψες το 66% του διαθέσιμου</span>
        </div>
        <div style="background: #FFFFFF; border: 1px solid #E6E8F0; border-radius: 18px; padding: 20px 22px; display: flex; flex-direction: column; gap: 10px">
          <span style="font-size: 14px; color: #5F6478; font-weight: 500">Έξοδα μέχρι σήμερα</span>
          <span style="font-size: 34px; font-weight: 700; letter-spacing: -0.8px">795,00 €</span>
          <span style="font-size: 13px; color: #157F55; font-weight: 600">−35 € σε σχέση με 12/02</span>
        </div>
        <div style="background: #FFFFFF; border: 1px solid #E6E8F0; border-radius: 18px; padding: 20px 22px; display: flex; flex-direction: column; gap: 10px">
          <span style="font-size: 14px; color: #5F6478; font-weight: 500">Διαθέσιμο ποσό μήνα</span>
          <span style="font-size: 34px; font-weight: 700; letter-spacing: -0.8px">1.200,00 €</span>
          <button type="button" onClick="{{openBudget}}" style="align-self: flex-start; border: 0; background: transparent; padding: 0; font: inherit; font-size: 14px; font-weight: 600; color: #4B3FC9; cursor: pointer; min-height: 24px">Αλλαγή ποσού</button>
        </div>
        <div style="background: #FFFFFF; border: 1px solid #E6E8F0; border-radius: 18px; padding: 20px 22px; display: flex; flex-direction: column; gap: 10px">
          <span style="font-size: 14px; color: #5F6478; font-weight: 500">Επερχόμενες πληρωμές</span>
          <span style="font-size: 34px; font-weight: 700; letter-spacing: -0.8px">55,00 €</span>
          <span style="font-size: 13px; color: #5F6478">Κινητό 17/03 · Internet 25/03</span>
        </div>
      </div>

      <!-- Καρτέλες -->
      <div role="tablist" aria-label="Ενότητες οικονομικών" style="display: flex; flex-wrap: wrap; gap: 4px; border-bottom: 1px solid #E1E4EC">
        <sc-for list="{{tabs}}" as="tb" hint-placeholder-count="3">
          <button type="button" role="tab" aria-selected="{{tb.on}}" onClick="{{tb.pick}}" style="height: 48px; padding: 0 18px; border: 0; border-bottom: 3px solid {{tb.line}}; background: transparent; font: inherit; font-size: 15px; font-weight: 600; color: {{tb.fg}}; cursor: pointer; margin-bottom: -1px">{{tb.label}}</button>
        </sc-for>
      </div>

      <!-- Κινήσεις -->
      <sc-if value="{{tabMoves}}" hint-placeholder-val="{{ true }}">
        <section aria-label="Κινήσεις Μαρτίου" style="background: #FFFFFF; border-radius: 20px; border: 1px solid #E6E8F0; padding: 8px 24px 16px">
          <sc-for list="{{groups}}" as="g" hint-placeholder-count="4">
            <div>
              <h3 style="margin: 16px 0 4px; font-size: 13px; font-weight: 600; color: #5F6478; text-transform: uppercase; letter-spacing: 0.6px">{{g.date}}</h3>
              <sc-for list="{{g.items}}" as="it" hint-placeholder-count="2">
                <div class="row" style="display: flex; align-items: center; gap: 14px; padding: 10px 8px; border-radius: 12px">
                  <div style="width: 44px; height: 44px; border-radius: 12px; background: {{it.tint}}; color: {{it.color}}; display: flex; align-items: center; justify-content: center; flex: none; font-size: 16px; font-weight: 700">{{it.initial}}</div>
                  <div style="flex: 1; min-width: 0; display: flex; flex-direction: column; gap: 3px">
                    <span style="font-size: 15px; font-weight: 600">{{it.title}}</span>
                    <span style="display: flex; flex-wrap: wrap; align-items: center; gap: 8px; font-size: 13px; color: #5F6478">
                      {{it.cat}}
                      <sc-if value="{{it.hasBadge}}" hint-placeholder-val="{{ false }}">
                        <span style="font-size: 12px; font-weight: 600; padding: 2px 8px; border-radius: 10px; background: #F0F1F6; color: #3F4358">{{it.badge}}</span>
                      </sc-if>
                    </span>
                  </div>
                  <span style="font-size: 15px; font-weight: 700; white-space: nowrap">−{{it.amount}}</span>
                </div>
              </sc-for>
            </div>
          </sc-for>
        </section>
      </sc-if>

      <!-- Σταθερά & Συνδρομές -->
      <sc-if value="{{tabFixed}}" hint-placeholder-val="{{ false }}">
        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start">
          <sc-for list="{{fixedLists}}" as="fl" hint-placeholder-count="2">
            <section style="flex: 1 1 380px; min-width: 0; background: #FFFFFF; border-radius: 20px; border: 1px solid #E6E8F0; padding: 24px; display: flex; flex-direction: column; gap: 6px">
              <div style="display: flex; justify-content: space-between; align-items: flex-start; gap: 12px">
                <div>
                  <h2 style="margin: 0; font-size: 18px; font-weight: 700">{{fl.title}}</h2>
                  <p style="margin: 4px 0 0; font-size: 14px; color: #5F6478">{{fl.hint}}</p>
                </div>
                <button type="button" onClick="{{fl.add}}" aria-label="{{fl.addLabel}}" style="width: 44px; height: 44px; border-radius: 12px; border: 1px solid #D5D8E3; background: #FFFFFF; cursor: pointer; color: #4B3FC9; display: flex; align-items: center; justify-content: center; flex: none">
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" aria-hidden="true"><path d="M12 5v14M5 12h14"></path></svg>
                </button>
              </div>
              <sc-for list="{{fl.items}}" as="f" hint-placeholder-count="3">
                <div style="display: flex; align-items: center; gap: 12px; padding: 12px 0; border-bottom: 1px solid #F0F1F5">
                  <div style="flex: 1; min-width: 0">
                    <div style="font-size: 15px; font-weight: 600">{{f.name}}</div>
                    <div style="font-size: 13px; color: #5F6478">{{f.when}} · {{f.cat}}</div>
                  </div>
                  <span style="font-size: 15px; font-weight: 700">{{f.amount}}</span>
                </div>
              </sc-for>
              <div style="display: flex; justify-content: space-between; font-size: 15px; padding-top: 8px">
                <span style="color: #3F4358">Σύνολο ανά μήνα</span><strong>{{fl.total}}</strong>
              </div>
            </section>
          </sc-for>
        </div>
      </sc-if>

      <!-- Στατιστικά -->
      <sc-if value="{{tabStats}}" hint-placeholder-val="{{ false }}">
        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: stretch">
          <section aria-labelledby="st-cat" style="flex: 1 1 380px; min-width: 0; background: #FFFFFF; border-radius: 20px; border: 1px solid #E6E8F0; padding: 24px; display: flex; flex-direction: column; gap: 16px">
            <h2 id="st-cat" style="margin: 0; font-size: 18px; font-weight: 700">Έξοδα ανά κατηγορία</h2>
            <div style="display: flex; flex-wrap: wrap; align-items: center; gap: 24px">
              <svg width="170" height="170" viewBox="0 0 180 180" role="img" aria-label="Έξοδα Μαρτίου ανά κατηγορία" style="flex: none">
                <g transform="rotate(-90 90 90)">
                  <sc-for list="{{segments}}" as="s" hint-placeholder-count="6">
                    <circle cx="90" cy="90" r="70" fill="none" stroke="{{s.color}}" stroke-width="26" stroke-dasharray="{{s.dash}}" stroke-dashoffset="{{s.offset}}"></circle>
                  </sc-for>
                </g>
                <text x="90" y="88" text-anchor="middle" font-size="22" font-weight="700" fill="#1E1B3A" font-family="Inter, sans-serif">795 €</text>
                <text x="90" y="108" text-anchor="middle" font-size="12" fill="#5F6478" font-family="Inter, sans-serif">έως 12/03</text>
              </svg>
              <ul style="list-style: none; margin: 0; padding: 0; flex: 1; min-width: 180px; display: flex; flex-direction: column; gap: 10px">
                <sc-for list="{{segments}}" as="s" hint-placeholder-count="6">
                  <li style="display: flex; align-items: center; gap: 8px; font-size: 14px">
                    <span style="width: 10px; height: 10px; border-radius: 3px; background: {{s.color}}; flex: none"></span>
                    <span style="flex: 1">{{s.name}}</span>
                    <span style="color: #5F6478; width: 42px; text-align: right">{{s.pct}}</span>
                    <span style="font-weight: 600; width: 56px; text-align: right">{{s.amount}}</span>
                  </li>
                </sc-for>
              </ul>
            </div>
          </section>
          <section aria-labelledby="st-months" style="flex: 1 1 380px; min-width: 0; background: #FFFFFF; border-radius: 20px; border: 1px solid #E6E8F0; padding: 24px; display: flex; flex-direction: column; gap: 12px">
            <h2 id="st-months" style="margin: 0; font-size: 18px; font-weight: 700">Έξοδα τελευταίων μηνών</h2>
            <div style="display: flex; align-items: flex-end; gap: 14px; height: 200px; padding-top: 8px" role="img" aria-label="Έξοδα: Οκτ 980 €, Νοε 1.040 €, Δεκ 1.210 €, Ιαν 1.150 €, Φεβ 1.090 €, Μαρ 795 € έως σήμερα">
              <sc-for list="{{bars}}" as="b" hint-placeholder-count="6">
                <div style="flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: flex-end; gap: 6px; height: 100%">
                  <span style="font-size: 12px; font-weight: 600; color: #3F4358">{{b.value}}</span>
                  <div style="width: 100%; max-width: 48px; height: {{b.h}}; border-radius: 8px 8px 4px 4px; background: {{b.color}}"></div>
                  <span style="font-size: 13px; color: #5F6478">{{b.label}}</span>
                </div>
              </sc-for>
            </div>
            <p style="margin: 4px 0 0; font-size: 14px; color: #3F4358; background: #F7F8FB; border-radius: 12px; padding: 12px 14px">Οι συνδρομές σου κοστίζουν <strong>104 € τον μήνα</strong> (1.248 € τον χρόνο).</p>
          </section>
        </div>
      </sc-if>
    </div>
  </main>

  <!-- Φόρμα «Νέο έξοδο» -->
  <sc-if value="{{showExpense}}" hint-placeholder-val="{{ false }}">
    <div style="position: absolute; inset: 0; background: rgba(30,27,58,0.45); display: none; align-items: flex-start; justify-content: center; padding: 48px 16px; box-sizing: border-box; z-index: 10">
      <form role="dialog" aria-modal="true" aria-labelledby="exp-title" onSubmit="{{save}}" style="width: 100%; max-width: 520px; background: #FFFFFF; border-radius: 20px; padding: 28px; box-sizing: border-box; display: flex; flex-direction: column; gap: 18px; box-shadow: 0 20px 60px rgba(30,27,58,0.25)">
        <div style="display: flex; justify-content: space-between; align-items: center">
          <h2 id="exp-title" style="margin: 0; font-size: 22px; font-weight: 700">Νέο έξοδο</h2>
          <button type="button" onClick="{{close}}" aria-label="Κλείσιμο" style="width: 44px; height: 44px; border-radius: 12px; border: 0; background: #F3F4F8; cursor: pointer; color: #3F4358; display: flex; align-items: center; justify-content: center">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" aria-hidden="true"><path d="M6 6l12 12M18 6L6 18"></path></svg>
          </button>
        </div>
        <label class="field">Ποσό
          <input type="number" name="amount" min="0.01" step="0.01" placeholder="0,00 €" required="" style="font-size: 28px; font-weight: 700; min-height: 60px">
        </label>
        <label class="field">Περιγραφή
          <input type="text" name="description" placeholder="π.χ. Σούπερ μάρκετ">
        </label>
        <div class="field" role="group" aria-labelledby="ecat-lbl">
          <span id="ecat-lbl">Κατηγορία</span>
          <div style="display: flex; flex-wrap: wrap; gap: 8px">
            <sc-for list="{{catChips}}" as="k" hint-placeholder-count="6">
              <button type="button" onClick="{{k.pick}}" aria-pressed="{{k.on}}" style="display: inline-flex; align-items: center; gap: 6px; height: 40px; padding: 0 14px; border-radius: 20px; border: 2px solid {{k.border}}; background: {{k.bg}}; font: inherit; font-size: 14px; font-weight: 600; color: #1E1B3A; cursor: pointer">
                <span style="width: 10px; height: 10px; border-radius: 5px; background: {{k.color}}"></span>{{k.name}}
              </button>
            </sc-for>
          </div>
        </div>
        <label class="field">Ημερομηνία
          <input type="date" name="expense_date" defaultValue="2025-03-12">
        </label>
        <label style="display: flex; align-items: center; gap: 12px; padding: 14px; border-radius: 12px; background: #F7F8FB; cursor: pointer; font-size: 15px; font-weight: 600; min-height: 44px; box-sizing: border-box">
          <input type="checkbox" checked="{{isSub}}" onChange="{{toggleSub}}" style="width: 22px; height: 22px; accent-color: #4B3FC9; margin: 0">
          <span style="display: flex; flex-direction: column; gap: 2px">
            Είναι συνδρομή
            <span style="font-size: 13px; font-weight: 400; color: #5F6478">Θα επαναλαμβάνεται αυτόματα και θα εμφανίζεται στο ημερολόγιο</span>
          </span>
        </label>
        <sc-if value="{{isSub}}" hint-placeholder-val="{{ false }}">
          <div style="display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 12px">
            <label class="field">Κάθε πότε
              <select name="frequency" defaultValue="MONTHLY"><option value="MONTHLY">Κάθε μήνα</option><option value="YEARLY">Κάθε χρόνο</option><option value="WEEKLY">Κάθε εβδομάδα</option></select>
            </label>
            <label class="field">Επόμενη ανανέωση
              <input type="date" name="next_renewal_date" defaultValue="2025-04-12">
            </label>
          </div>
        </sc-if>
        <div style="display: flex; justify-content: flex-end; gap: 12px">
          <button type="button" onClick="{{close}}" style="height: 44px; padding: 0 20px; border-radius: 12px; border: 1px solid #D5D8E3; background: #FFFFFF; font: inherit; font-size: 15px; font-weight: 600; color: #3F4358; cursor: pointer">Ακύρωση</button>
          <button type="submit" class="btn-primary" style="height: 44px; padding: 0 24px; border-radius: 12px; border: 0; background: #4B3FC9; color: #FFFFFF; font: inherit; font-size: 15px; font-weight: 600; cursor: pointer">Αποθήκευση</button>
        </div>
      </form>
    </div>
  </sc-if>

  <!-- Φόρμα «Διαθέσιμο ποσό» -->
  <sc-if value="{{showBudget}}" hint-placeholder-val="{{ false }}">
    <div style="position: absolute; inset: 0; background: rgba(30,27,58,0.45); display: none; align-items: flex-start; justify-content: center; padding: 96px 16px; box-sizing: border-box; z-index: 10">
      <form role="dialog" aria-modal="true" aria-labelledby="bud-title" onSubmit="{{save}}" style="width: 100%; max-width: 420px; background: #FFFFFF; border-radius: 20px; padding: 28px; box-sizing: border-box; display: flex; flex-direction: column; gap: 16px; box-shadow: 0 20px 60px rgba(30,27,58,0.25)">
        <h2 id="bud-title" style="margin: 0; font-size: 22px; font-weight: 700">Διαθέσιμο ποσό Μαρτίου</h2>
        <label class="field">Πόσα έχεις να διαθέσεις αυτόν τον μήνα;
          <input type="number" name="available_amount" min="0" step="1" defaultValue="1200" style="font-size: 24px; font-weight: 700">
        </label>
        <p style="margin: 0; font-size: 13px; color: #5F6478">Τα σταθερά έξοδα (395 €) αφαιρούνται αυτόματα την 1η κάθε μήνα.</p>
        <div style="display: flex; justify-content: flex-end; gap: 12px">
          <button type="button" onClick="{{close}}" style="height: 44px; padding: 0 20px; border-radius: 12px; border: 1px solid #D5D8E3; background: #FFFFFF; font: inherit; font-size: 15px; font-weight: 600; color: #3F4358; cursor: pointer">Ακύρωση</button>
          <button type="submit" class="btn-primary" style="height: 44px; padding: 0 24px; border-radius: 12px; border: 0; background: #4B3FC9; color: #FFFFFF; font: inherit; font-size: 15px; font-weight: 600; cursor: pointer">Αποθήκευση</button>
        </div>
      </form>
    </div>
  </sc-if>
</div>
</x-dc>
<script type="text/x-dc" data-dc-script data-props='{"$preview":{"width":1440,"height":1140}}'>
class Component extends DCLogic {
  constructor(p) { super(p); this.state = { tab: 'moves', modal: null, sub: false, cat: 'Διατροφή' }; }
  renderVals() {
    const CAT = { 'Στέγαση & λογαριασμοί': ['#4B3FC9', '#ECE9FF'], 'Διατροφή': ['#2F80ED', '#E6F0FD'], 'Μετακινήσεις': ['#E8833A', '#FDEEDF'],
                  'Υγεία': ['#159A8C', '#E1F4F1'], 'Συνδρομές': ['#D94F8C', '#FBE8F1'], 'Λοιπά': ['#6B7185', '#EEF0F4'] };
    const mv = (title, cat, amount, badge) => ({ title, cat, amount: amount.toFixed(2).replace('.', ',') + ' €', badge: badge || '', hasBadge: !!badge,
      color: CAT[cat][0], tint: CAT[cat][1], initial: title.charAt(0) });
    const groups = [
      { date: 'Σήμερα, 12 Μαρτίου', items: [mv('Ψυχολόγος', 'Υγεία', 40, 'Από το ημερολόγιο'), mv('Σούπερ μάρκετ', 'Διατροφή', 32.5)] },
      { date: '11 Μαρτίου', items: [mv('Καφές', 'Διατροφή', 3.8), mv('Φαρμακείο', 'Υγεία', 15)] },
      { date: '10 Μαρτίου', items: [mv('Βενζίνη', 'Μετακινήσεις', 40)] },
      { date: '9 Μαρτίου', items: [mv('Κομμωτήριο', 'Λοιπά', 15, 'Από το ημερολόγιο')] },
      { date: '5 Μαρτίου', items: [mv('Streaming', 'Συνδρομές', 14, 'Συνδρομή')] },
      { date: '1 Μαρτίου', items: [mv('Ενοίκιο', 'Στέγαση & λογαριασμοί', 350, 'Σταθερό έξοδο'), mv('Ρεύμα', 'Στέγαση & λογαριασμοί', 45, 'Σταθερό έξοδο'), mv('Γυμναστήριο', 'Συνδρομές', 35, 'Συνδρομή')] }];

    const cats = [['Στέγαση & λογαριασμοί', 395], ['Διατροφή', 182], ['Μετακινήσεις', 78], ['Υγεία', 55], ['Συνδρομές', 49], ['Λοιπά', 36]];
    const total = 795, C = 2 * Math.PI * 70; let acc = 0;
    const segments = cats.map(([name, v]) => { const len = v / total * C;
      const s = { name, color: CAT[name][0], amount: v + ' €', pct: Math.round(v / total * 100) + '%', dash: (len - 2).toFixed(2) + ' ' + C.toFixed(2), offset: (-acc).toFixed(2) }; acc += len; return s; });

    const months = [['Οκτ', 980], ['Νοε', 1040], ['Δεκ', 1210], ['Ιαν', 1150], ['Φεβ', 1090], ['Μαρ', 795]];
    const bars = months.map(([label, v], i) => ({ label, value: v.toLocaleString('el-GR') + ' €', h: Math.round(v / 1210 * 140) + 'px', color: i === 5 ? '#4B3FC9' : '#C9C4F5' }));

    const fl = (name, when, cat, a) => ({ name, when, cat, amount: a + ' €' });
    const open = (m) => () => this.setState({ modal: m });
    const fixedLists = [
      { title: 'Σταθερά έξοδα', hint: 'Προστίθενται αυτόματα την 1η κάθε μήνα', addLabel: 'Νέο σταθερό έξοδο', add: open('expense'), total: '395 €',
        items: [fl('Ενοίκιο', '1η του μήνα', 'Στέγαση & λογαριασμοί', 350), fl('Ρεύμα', '1η του μήνα', 'Στέγαση & λογαριασμοί', 45)] },
      { title: 'Συνδρομές', hint: 'Ανανεώνονται αυτόματα και φαίνονται στο ημερολόγιο', addLabel: 'Νέα συνδρομή', add: () => this.setState({ modal: 'expense', sub: true }), total: '104 €',
        items: [fl('Γυμναστήριο', 'Κάθε 1η', 'Συνδρομές', 35), fl('Streaming', 'Κάθε 5η', 'Συνδρομές', 14), fl('Κινητό', 'Κάθε 17η', 'Συνδρομές', 25), fl('Internet', 'Κάθε 25η', 'Συνδρομές', 30)] }];

    const tab = this.state.tab;
    return {
      tabs: [['moves', 'Κινήσεις'], ['fixed', 'Σταθερά & Συνδρομές'], ['stats', 'Στατιστικά']].map(([k, label]) =>
        ({ label, on: tab === k, line: tab === k ? '#4B3FC9' : 'transparent', fg: tab === k ? '#1E1B3A' : '#5F6478', pick: () => this.setState({ tab: k }) })),
      tabMoves: tab === 'moves', tabFixed: tab === 'fixed', tabStats: tab === 'stats',
      groups, segments, bars, fixedLists,
      showExpense: this.state.modal === 'expense', showBudget: this.state.modal === 'budget',
      openExpense: () => this.setState({ modal: 'expense', sub: false }), openBudget: open('budget'),
      close: () => this.setState({ modal: null }), save: (e) => { e.preventDefault(); this.setState({ modal: null }); },
      isSub: this.state.sub, toggleSub: () => this.setState({ sub: !this.state.sub }),
      catChips: Object.keys(CAT).map(name => { const on = this.state.cat === name; return { name, on, color: CAT[name][0], bg: on ? CAT[name][1] : '#FFFFFF', border: on ? CAT[name][0] : '#E1E4EC', pick: () => this.setState({ cat: name }) }; })
    };
  }
}
</script>
</body>
</html>
