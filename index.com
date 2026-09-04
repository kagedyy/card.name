<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aldy YORU | Profile</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            color: white;
            background:
                linear-gradient(135deg, #16002e, #4b167d, #0066ff, #00b894);
            background-size: 400% 400%;
            animation: gradient 12s ease infinite;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow-x: hidden;
        }

        @keyframes gradient {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .container {
            width: 100%;
            max-width: 1000px;
            min-height: 600px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 70px;
            padding: 30px;
        }

        /* GAMBAR ANIME */
        .anime-box {
            width: 330px;
            height: 500px;
            border-radius: 30px;
            overflow: hidden;
            box-shadow: 0 20px 50px rgba(0,0,0,.4);
            border: 2px solid rgba(255,255,255,.3);
        }

        .anime-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* PROFILE */
        .card {
            width: 390px;
            padding: 35px;
            border-radius: 28px;

            background: rgba(255,255,255,.15);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);

            border: 1px solid rgba(255,255,255,.3);
            box-shadow: 0 20px 50px rgba(0,0,0,.3);
        }

        .profile {
            width: 95px;
            height: 95px;
            margin: auto;
            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 32px;
            font-weight: bold;

            background: linear-gradient(
                135deg,
                #ff4ecd,
                #7c4dff,
                #00d4ff
            );

            box-shadow: 0 0 30px rgba(126,87,255,.8);
        }

        h1 {
            text-align: center;
            margin-top: 18px;
            font-size: 32px;
        }

        .job {
            text-align: center;
            color: #d8c9ff;
            margin-top: 8px;
            font-size: 17px;
        }

        .bio {
            text-align: center;
            margin: 25px 0;
            font-size: 17px;
            line-height: 1.6;
            color: #fff;
        }

        h2 {
            font-size: 16px;
            margin-bottom: 13px;
        }

        .skills {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-bottom: 28px;
        }

        .skill {
            padding: 10px 16px;
            border-radius: 12px;

            background: linear-gradient(
                135deg,
                rgba(255,78,205,.6),
                rgba(0,212,255,.5)
            );

            border: 1px solid rgba(255,255,255,.3);
        }

        .buttons {
            display: flex;
            gap: 12px;
        }

        button {
            flex: 1;
            padding: 14px;
            border: none;
            border-radius: 13px;
            cursor: pointer;
            color: white;
            font-size: 16px;
            font-weight: bold;

            background: linear-gradient(
                135deg,
                #ff3cac,
                #784ba0,
                #2b86c5
            );

            transition: .3s;
        }

        button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,.3);
        }

        .message-btn {
            background: transparent;
            border: 2px solid #fff;
        }

        /* BAGIAN KANAN */
        .info {
            position: absolute;
            right: 40px;
            bottom: 30px;
            text-align: right;
        }

        .username {
            font-size: 22px;
            font-weight: bold;
        }

        .role {
            color: #d7c7ff;
            margin-top: 5px;
        }

        .copyright {
            margin-top: 8px;
            color: #ddd;
            font-size: 14px;
        }

        /* POPUP PESAN */
        .popup {
            display: none;
            position: fixed;
            inset: 0;

            background: rgba(0,0,0,.6);
            backdrop-filter: blur(8px);

            justify-content: center;
            align-items: center;

            z-index: 10;
        }

        .message-box {
            width: 380px;
            padding: 32px;
            border-radius: 25px;

            background: linear-gradient(
                145deg,
                rgba(40,20,80,.95),
                rgba(20,70,120,.95)
            );

            border: 1px solid rgba(255,255,255,.3);
            box-shadow: 0 20px 60px rgba(0,0,0,.5);
        }

        .message-box h2 {
            text-align: center;
            font-size: 25px;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin: 12px 0 7px;
        }

        input,
        textarea {
            width: 100%;
            padding: 12px;

            border-radius: 10px;
            border: 1px solid rgba(255,255,255,.4);

            background: rgba(255,255,255,.1);
            color: white;
            outline: none;
        }

        input::placeholder,
        textarea::placeholder {
            color: #ccc;
        }

        textarea {
            height: 110px;
            resize: none;
        }

        .form-buttons {
            display: flex;
            gap: 10px;
            margin-top: 18px;
        }

        .close {
            background: transparent;
            border: 2px solid #fff;
        }

        @media (max-width: 850px) {
            .container {
                flex-direction: column;
            }

            .anime-box {
                width: 280px;
                height: 350px;
            }

            .info {
                position: static;
                text-align: center;
                margin-top: -10px;
            }
        }
    </style>
</head>

<body>

    <div class="container">

        <!-- GAMBAR ANIME -->
        <div class="anime-box">
            <img
                src="c:\Users\admin\Downloads\RMT.jfif"
                alt="Anime"
            >
        </div>


        <!-- PROFILE -->
        <div class="card">

            <div class="profile">
                DE
            </div>

            <h1>Aldy YORU</h1>

            <div class="job">
                Gamer & Web Developer
            </div>

            <p class="bio">
                "Just a game? No, it’s an art."
            </p>

            <h2>KEAHLIAN</h2>

            <div class="skills">
                <span class="skill">HTML</span>
                <span class="skill">CSS</span>
                <span class="skill">Main ML</span>
                <span class="skill">GAMERS TIER SS+</span>
            </div>

            <div class="buttons">
                <button onclick="kontak()">
                    Kontak
                </button>

                <button
                    class="message-btn"
                    onclick="bukaPesan()">
                    Pesan
                </button>
            </div>

        </div>

    </div>


    <!-- INFO -->
    <div class="info">
        <div class="username">
            aldy.yoru
        </div>

        <div class="role">
            Gamer & Web Developer
        </div>

        <div class="copyright">
            © 2026 Aldy YORU
        </div>
    </div>


    <!-- POPUP KIRIM PESAN -->
    <div class="popup" id="popup">

        <div class="message-box">

            <h2>Kirim Pesan</h2>

            <form onsubmit="kirimPesan(event)">

                <label>Nama</label>
                <input
                    type="text"
                    placeholder="Masukkan nama"
                    required
                >

                <label>Email</label>
                <input
                    type="email"
                    placeholder="Masukkan email"
                    required
                >

                <label>Permasalahan/Pertanyaan</label>
                <textarea
                    placeholder="Tulis pesan kamu..."
                    required
                ></textarea>

                <div class="form-buttons">

                    <button type="submit">
                        Kirim
                    </button>

                    <button
                        type="button"
                        class="close"
                        onclick="tutupPesan()">
                        Kembali
                    </button>

                </div>

            </form>

        </div>

    </div>


    <script>

        function bukaPesan() {
            document.getElementById("popup").style.display = "flex";
        }

        function tutupPesan() {
            document.getElementById("popup").style.display = "none";
        }

        function kontak() {
            alert("Halo! 👋 Kamu bisa menghubungi Aldy YORU.");
        }

        function kirimPesan(event) {
            event.preventDefault();

            alert("Pesan berhasil dikirim! 🚀");

            tutupPesan();
        }

    </script>

</body>
</html>
