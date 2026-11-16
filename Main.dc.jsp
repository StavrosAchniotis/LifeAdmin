<!doctype html>
<html lang="el">
<head>
<meta charset="utf-8">
<title>Home-LifeAdmin</title>
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
.check-row:hover{background:#FAFAFE}
.btn-primary:hover{background:#3A2FA8}
</style>
</helmet>
<div style="display: flex; flex-wrap: wrap; min-height: 100vh; font-family: Inter, system-ui, sans-serif; color: #1E1B3A; background: #F5F6FA">

  <!-- Πλαϊνό μενού -->
  <nav aria-label="Κύριο μενού" style="flex: 1 1 220px; max-width: 260px; background: #FFFFFF; border-right: 1px solid #E6E8F0; padding: 24px 16px; box-sizing: border-box; display: flex; flex-direction: column; gap: 28px">
    <div style="display: flex; align-items: center; gap: 10px; padding: 0 8px">
      <div style="width: 36px; height: 36px; border-radius: 10px; background: #4B3FC9; display: flex; align-items: center; justify-content: center">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="5" width="18" height="16" rx="3"></rect><path d="M8 3v4M16 3v4M3 10h18"></path><path d="M9 15l2 2 4-4"></path></svg>
      </div>
      <span style="font-size: 20px; font-weight: 700; letter-spacing: -0.3px">LifeAdmin</span>
    </div>
    <div style="display: flex; flex-direction: column; gap: 4px">
      <a class="nav-link" href="/ismgroup6/Main.dc.jsp" aria-current="page" style="background: #ECE9FF; color: #3A2FA8">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M3 11l9-7 9 7v9a1 1 0 0 1-1 1h-5v-6H9v6H4a1 1 0 0 1-1-1z"></path></svg>
        Αρχική
      </a>
      <a class="nav-link" href="/ismgroup6/Time.dc.jsp">
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

  <!-- Περιεχόμενο -->
  <main style="flex: 999 1 560px; min-width: 0; padding: 32px 40px 48px; box-sizing: border-box">
    <div style="max-width: 1120px; margin: 0 auto; display: flex; flex-direction: column; gap: 24px">

      <header style="display: flex; flex-wrap: wrap; align-items: center; justify-content: space-between; gap: 16px">
        <div>
          <h1 style="margin: 0; font-size: 28px; font-weight: 700; letter-spacing: -0.4px">Καλημέρα, Μαρία</h1>
          <p style="margin: 6px 0 0; font-size: 15px; color: #5F6478">Τετάρτη, 12 Μαρτίου 2025</p>
        </div>
        <div style="display: flex; gap: 12px; align-items: center">
          <button type="button" aria-label="Ειδοποιήσεις" style="width: 44px; height: 44px; border-radius: 12px; border: 1px solid #E6E8F0; background: #FFFFFF; display: flex; align-items: center; justify-content: center; cursor: pointer; color: #3F4358">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M6 8a6 6 0 1 1 12 0c0 7 3 8 3 8H3s3-1 3-8M10 20a2 2 0 0 0 4 0"></path></svg>
          </button>
          <a class="btn-primary" href="/ismgroup6/Time.dc.jsp" style="display: inline-flex; align-items: center; gap: 8px; height: 44px; padding: 0 18px; border-radius: 12px; background: #4B3FC9; color: #FFFFFF; font-size: 15px; font-weight: 600; text-decoration: none">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" aria-hidden="true"><path d="M12 5v14M5 12h14"></path></svg>
            Νέα δραστηριότητα
          </a>
        </div>
      </header>

      <!-- Πάνω σειρά: ξοδέματα μήνα (στυλ Revolut) + υπόλοιπο -->
      <div style="display: flex; flex-wrap: wrap; gap: 24px">

        <section aria-labelledby="spend-title" style="flex: 2 1 520px; background: #FFFFFF; border-radius: 20px; padding: 24px 28px; border: 1px solid #E6E8F0; display: flex; flex-direction: column; gap: 12px; min-width: 0">
          <div style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 12px; align-items: flex-start">
            <div>
              <h2 id="spend-title" style="margin: 0; font-size: 15px; font-weight: 500; color: #5F6478">Ξόδεψες τον Μάρτιο</h2>
              <p style="margin: 4px 0 0; font-size: 40px; font-weight: 700; letter-spacing: -1px">795,00 €</p>
              <p style="margin: 4px 0 0; font-size: 14px; color: #157F55; font-weight: 600">35 € λιγότερα από την ίδια μέρα του Φεβρουαρίου</p>
            </div>
            <div style="display: flex; gap: 16px; font-size: 13px; color: #5F6478; align-items: center">
              <span style="display: inline-flex; align-items: center; gap: 6px"><span style="width: 16px; height: 3px; background: #4B3FC9; border-radius: 2px"></span>Μάρτιος</span>
              <span style="display: inline-flex; align-items: center; gap: 6px"><span style="width: 16px; height: 0; border-top: 2px dashed #9AA0B4"></span>Φεβρουάριος</span>
              <span style="display: inline-flex; align-items: center; gap: 6px"><span style="width: 16px; height: 0; border-top: 2px dotted #D14343"></span>Όριο 1.200 €</span>
            </div>
          </div>
          <svg viewBox="0 0 640 190" style="width: 100%; height: auto; display: block" role="img" aria-label="Σωρευτικά έξοδα Μαρτίου έως 12/03: 795 €, έναντι 830 € την ίδια μέρα του Φεβρουαρίου">
            <line x1="20" y1="{{limitY}}" x2="620" y2="{{limitY}}" stroke="#D14343" stroke-width="1.5" stroke-dasharray="2 5"></line>
            <polyline points="{{prevPts}}" fill="none" stroke="#9AA0B4" stroke-width="2" stroke-dasharray="6 5"></polyline>
            <polygon points="{{curArea}}" fill="#4B3FC9" fill-opacity="0.10"></polygon>
            <polyline points="{{curPts}}" fill="none" stroke="#4B3FC9" stroke-width="3" stroke-linejoin="round" stroke-linecap="round"></polyline>
            <circle cx="{{todayX}}" cy="{{todayY}}" r="6" fill="#4B3FC9" stroke="#FFFFFF" stroke-width="3"></circle>
            <text x="20" y="186" font-size="12" fill="#5F6478" font-family="Inter, sans-serif">1 Μαρ</text>
            <text x="{{todayX}}" y="186" font-size="12" fill="#1E1B3A" font-weight="600" text-anchor="middle" font-family="Inter, sans-serif">Σήμερα</text>
            <text x="620" y="186" font-size="12" fill="#5F6478" text-anchor="end" font-family="Inter, sans-serif">31 Μαρ</text>
          </svg>
        </section>

        <section aria-labelledby="bal-title" style="flex: 1 1 300px; background: #4B3FC9; color: #FFFFFF; border-radius: 20px; padding: 24px 28px; display: flex; flex-direction: column; gap: 14px">
          <h2 id="bal-title" style="margin: 0; font-size: 15px; font-weight: 500; color: #DCD8FF">Υπόλοιπο μήνα</h2>
          <p style="margin: 0; font-size: 40px; font-weight: 700; letter-spacing: -1px">405,00 €</p>
          <div>
            <div style="height: 10px; border-radius: 6px; background: rgba(255,255,255,0.25); overflow: hidden">
              <div style="width: 66%; height: 100%; background: #FFFFFF; border-radius: 6px"></div>
            </div>
            <p style="margin: 8px 0 0; font-size: 14px; color: #E7E4FF">795 € από 1.200 € (66%)</p>
          </div>
          <div style="margin-top: auto; background: rgba(255,255,255,0.14); border-radius: 12px; padding: 12px 14px; font-size: 14px; line-height: 1.45">
            Μετά τις επερχόμενες πληρωμές (55 €) θα σου μείνουν <strong>350,00 €</strong>.
          </div>
          <a href="/ismgroup6/Finance.dc.jsp" style="color: #FFFFFF; font-size: 14px; font-weight: 600">Προβολή οικονομικών →</a>
        </section>
      </div>

      <!-- Κάτω σειρά: σήμερα + κατηγορίες + επερχόμενα -->
      <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 24px">

        <section aria-labelledby="today-title" style="background: #FFFFFF; border-radius: 20px; padding: 24px; border: 1px solid #E6E8F0; display: flex; flex-direction: column; gap: 8px">
          <div style="display: flex; justify-content: space-between; align-items: baseline; margin-bottom: 4px">
            <h2 id="today-title" style="margin: 0; font-size: 18px; font-weight: 700">Σήμερα</h2>
            <span style="font-size: 14px; color: #5F6478">{{doneCount}} από {{total}} έγιναν</span>
          </div>
          <sc-for list="{{tasks}}" as="t" hint-placeholder-count="4">
            <label class="check-row" style="display: flex; align-items: center; gap: 14px; padding: 12px 10px; border-radius: 12px; cursor: pointer; min-height: 44px; box-sizing: border-box">
              <input type="checkbox" checked="{{t.done}}" onChange="{{t.toggle}}" style="width: 22px; height: 22px; accent-color: #4B3FC9; margin: 0; flex: none; cursor: pointer">
              <span style="width: 4px; align-self: stretch; border-radius: 2px; background: {{t.color}}; flex: none"></span>
              <span style="flex: 1; min-width: 0; display: flex; flex-direction: column; gap: 2px">
                <span style="font-size: 15px; font-weight: 600; text-decoration: {{t.deco}}; color: {{t.titleColor}}">{{t.title}}</span>
                <span style="font-size: 13px; color: #5F6478">{{t.time}} · {{t.cat}}</span>
              </span>
              <span style="font-size: 14px; font-weight: 600; color: #3F4358">{{t.cost}}</span>
            </label>
          </sc-for>
          <a href="/ismgroup6/Time.dc.jsp" style="font-size: 14px; font-weight: 600; margin-top: 8px">Όλο το ημερολόγιο →</a>
        </section>

        <section aria-labelledby="cat-title" style="background: #FFFFFF; border-radius: 20px; padding: 24px; border: 1px solid #E6E8F0; display: flex; flex-direction: column; gap: 16px">
          <h2 id="cat-title" style="margin: 0; font-size: 18px; font-weight: 700">Πού πήγαν τα χρήματα</h2>
          <div style="display: flex; flex-wrap: wrap; align-items: center; gap: 20px">
            <svg width="150" height="150" viewBox="0 0 180 180" role="img" aria-label="Έξοδα Μαρτίου ανά κατηγορία" style="flex: none">
              <g transform="rotate(-90 90 90)">
                <sc-for list="{{segments}}" as="s" hint-placeholder-count="6">
                  <circle cx="90" cy="90" r="70" fill="none" stroke="{{s.color}}" stroke-width="26" stroke-dasharray="{{s.dash}}" stroke-dashoffset="{{s.offset}}"></circle>
                </sc-for>
              </g>
              <text x="90" y="86" text-anchor="middle" font-size="22" font-weight="700" fill="#1E1B3A" font-family="Inter, sans-serif">795 €</text>
              <text x="90" y="106" text-anchor="middle" font-size="12" fill="#5F6478" font-family="Inter, sans-serif">Μάρτιος</text>
            </svg>
            <ul style="list-style: none; margin: 0; padding: 0; flex: 1; min-width: 160px; display: flex; flex-direction: column; gap: 8px">
              <sc-for list="{{segments}}" as="s" hint-placeholder-count="6">
                <li style="display: flex; align-items: center; gap: 8px; font-size: 14px">
                  <span style="width: 10px; height: 10px; border-radius: 3px; background: {{s.color}}; flex: none"></span>
                  <span style="flex: 1">{{s.name}}</span>
                  <span style="font-weight: 600">{{s.amount}}</span>
                </li>
              </sc-for>
            </ul>
          </div>
        </section>

        <section aria-labelledby="up-title" style="background: #FFFFFF; border-radius: 20px; padding: 24px; border: 1px solid #E6E8F0; display: flex; flex-direction: column; gap: 4px">
          <h2 id="up-title" style="margin: 0 0 8px; font-size: 18px; font-weight: 700">Επερχόμενα</h2>
          <sc-for list="{{upcoming}}" as="u" hint-placeholder-count="4">
            <div style="display: flex; align-items: center; gap: 12px; padding: 10px 0; border-bottom: 1px solid #F0F1F5">
              <div style="width: 44px; height: 44px; border-radius: 12px; background: #F3F4F8; display: flex; flex-direction: column; align-items: center; justify-content: center; flex: none">
                <span style="font-size: 15px; font-weight: 700; line-height: 1">{{u.day}}</span>
                <span style="font-size: 11px; color: #5F6478">Μαρ</span>
              </div>
              <div style="flex: 1; min-width: 0">
                <div style="font-size: 15px; font-weight: 600">{{u.title}}</div>
                <div style="font-size: 13px; color: #5F6478">{{u.meta}}</div>
              </div>
              <span style="font-size: 14px; font-weight: 600">{{u.amount}}</span>
            </div>
          </sc-for>
        </section>
      </div>
    </div>
  </main>
</div>
</x-dc>
<script type="text/x-dc" data-dc-script data-props='{"$preview":{"width":1440,"height":1000}}'>
class Component extends DCLogic {
  constructor(p) { super(p); this.state = { done: { 0: true } }; }
  renderVals() {
    const W = 600, X0 = 20, H = 160, Y0 = 170, MAX = 1300;
    const x = d => X0 + (d - 1) / 30 * W;
    const y = v => Y0 - v / MAX * H;
    const cur = [430, 445, 470, 488, 520, 548, 590, 615, 650, 700, 745, 795];
    const prev = [425, 455, 490, 520, 560, 600, 640, 680, 720, 760, 795, 830, 850, 875, 895, 915, 935, 950, 965, 980, 995, 1010, 1025, 1040, 1052, 1064, 1077, 1090];
    const pts = arr => arr.map((v, i) => x(i + 1).toFixed(1) + ',' + y(v).toFixed(1)).join(' ');
    const curPts = pts(cur);
    const curArea = curPts + ' ' + x(cur.length).toFixed(1) + ',' + Y0 + ' ' + x(1).toFixed(1) + ',' + Y0;

    const cats = [
      ['Στέγαση & λογαριασμοί', 395, '#4B3FC9'], ['Διατροφή', 182, '#2F80ED'], ['Μετακινήσεις', 78, '#E8833A'],
      ['Υγεία', 55, '#159A8C'], ['Συνδρομές', 49, '#D94F8C'], ['Λοιπά', 36, '#A0A6B8']];
    const total = 795, C = 2 * Math.PI * 70; let acc = 0;
    const segments = cats.map(([name, v, color]) => {
      const len = v / total * C; const s = { name, color, amount: v + ' €', dash: (len - 2).toFixed(2) + ' ' + C.toFixed(2), offset: (-acc).toFixed(2) }; acc += len; return s;
    });

    const base = [
      { title: 'Γυμναστήριο', time: '08:00 – 09:00', cat: 'Υγεία', color: '#159A8C', cost: '' },
      { title: 'Σχολή', time: '09:00 – 17:00', cat: 'Σχολή', color: '#2F80ED', cost: '' },
      { title: 'Ψυχολόγος', time: '18:00 – 19:00', cat: 'Υγεία', color: '#159A8C', cost: '40 €' },
      { title: 'Μελέτη', time: '20:00 – 21:00', cat: 'Σχολή', color: '#2F80ED', cost: '' }];
    const done = this.state.done;
    const tasks = base.map((t, i) => ({ ...t, done: !!done[i], deco: done[i] ? 'line-through' : 'none', titleColor: done[i] ? '#8A8FA3' : '#1E1B3A',
      toggle: () => this.setState({ done: { ...this.state.done, [i]: !this.state.done[i] } }) }));

    return {
      curPts, curArea, prevPts: pts(prev), limitY: y(1200).toFixed(1), todayX: x(12).toFixed(1), todayY: y(795).toFixed(1),
      segments, tasks, total: tasks.length, doneCount: tasks.filter(t => t.done).length,
      upcoming: [
        { day: '17', title: 'Πληρωμή κινητού', meta: 'Συνδρομή · σε 5 ημέρες', amount: '25 €' },
        { day: '19', title: 'Οδοντίατρος', meta: 'Ραντεβού · 11:00', amount: '' },
        { day: '19', title: 'Ψυχολόγος', meta: 'Κάθε Τετάρτη · 18:00', amount: '40 €' },
        { day: '25', title: 'Internet', meta: 'Συνδρομή · σε 13 ημέρες', amount: '30 €' }]
    };
  }
}
</script>
</body>
</html>
