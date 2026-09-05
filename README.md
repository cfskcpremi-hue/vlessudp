# ⚡ KANCIL_VPN.sys // Cyberpunk Railway Gateway

<div align="center">

![License](https://img.shields.io/badge/LICENSE-MIT-emerald?style=for-the-badge)
![NodeJS](https://img.shields.io/badge/NODE.JS-v18+-339933?style=for-the-badge&logo=node.js&logoColor=white)
![Railway](https://img.shields.io/badge/DEPLOY-RAILWAY-0B0D0E?style=for-the-badge&logo=railway)
![UDP Support](https://img.shields.io/badge/UDP-OPTIMIZED-brightgreen?style=for-the-badge)

**High-Performance VLESS & Trojan WebSocket Proxy Gateway with Optimized UDP Engine for Railway.**

</div>

---

## 🚀 Key Features

* **⚡ Ultra-Low Latency:** Latensi super rendah (~40ms - 50ms) dengan koneksi WebSocket TLS yang stabil.
* **📞 WhatsApp VC & Real-Time UDP Ready:** Dilengkapi dengan *UDP Socket Reuse* & *Dynamic Timeout Engine* agar Video Call WhatsApp, VoIP, dan Game Online berjalan mulus tanpa tersendat.
* **🛡️ WebRTC & Anti-DNS Leak:** Pengalihan DNS Port 53 otomatis ke *Public DNS (Google/Cloudflare)*, menjamin IP lokal tidak bocor.
* **🎛️ Built-in Cyberpunk Dashboard:** Generator akun VLESS/Trojan interaktif langsung dari web dashboard.
* **🔀 Multi-Path Target Proxy:** Mendukung routing kustom ke berbagai *upstream proxy* (Indonesia & Singapore).

---

## 📊 Benchmark & Test Results

Pengujian langsung dilakukan menggunakan client **v2rayNG / NekoBox**:

* **Latency / Ping Check:** `~42ms` (Ultra Fast Connection)
* **WebRTC Leak Test:** `PASSED 🟢` — *No Public IP Leak* (Aman untuk VC WhatsApp)
* **DNS Leak Test:** `PASSED 🟢` — Full Google DNS Routing (`8.8.8.8`)

---

## 🛠️ Tech Stack & Architecture

* **Runtime:** Node.js (v18+)
* **Protocols:** VLESS WS TLS / Trojan WS TLS
* **Networking:** WebSocket (`ws`), Native TCP (`net`), Native UDP (`dgram`)

---

## 📦 File Structure

```text
├── index.js        # Main Entry Point, HTTP Server, WS Handler, & Cyberpunk Dashboard
├── udp.js          # Optimized UDP Engine (Socket Reuse, Echo Return, Dynamic Idle Timeout)
├── README.md       # Project Documentation & Tutorials
└── package.json    # Project Dependencies & Launch Script

## 🍴 Tutorial Deploy untuk Pengguna (Fork & Railway)

Ingin menggunakan atau memasang script VPN ini di akun Railway kamu sendiri? Ikuti panduan langkah demi langkah berikut:

### Langkah 1: Fork Repository di GitHub
1. Buka halaman repository ini di GitHub.
2. Klik tombol **Fork** di pojok kanan atas halaman.
3. Pastikan opsi **"Copy the main branch only"** tercentang.
4. Klik tombol **Create fork**. Sekarang script ini sudah tersalin penuh ke akun GitHub kamu.

### Langkah 2: Deploy ke Railway
1. Buka [Railway.app](https://railway.app) dan **Log in** menggunakan akun GitHub kamu.
2. Di halaman Dashboard Railway, klik **New Project**.
3. Pilih menu **Deploy from GitHub repo**.
4. Cari dan pilih repository `vlessudp` yang baru saja kamu fork.
5. Klik **Deploy Now** dan tunggu proses pembuatan server selesai.

### Langkah 3: Mengaktifkan Domain & Akses Dashboard
1. Setelah status deployment menjadi **Active**, klik nama service project kamu.
2. Masuk ke tab **Settings**, lalu gulir ke bawah ke bagian **Networking**.
3. Klik tombol **Generate Domain** untuk mendapatkan URL HTTPS publik otomatis.
4. *(Opsional)* Jika ingin mengganti UUID bawaan, buka tab **Variables**, tambahkan variable `SYSTEM_UUID` dengan isi UUID baru pilihanmu.
5. Buka link domain Railway kamu di browser untuk mengakses **Cyberpunk Config Generator** dan buat config VLESS / Trojan milikmu!
