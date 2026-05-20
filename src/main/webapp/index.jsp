<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Web App</title>
    <style>
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
            font-family: 'Segoe UI', Arial, sans-serif;
            color: #e0e0e0;
        }

        .card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.12);
            border-radius: 20px;
            padding: 48px 56px;
            max-width: 560px;
            width: 90%;
            text-align: center;
            box-shadow: 0 24px 64px rgba(0, 0, 0, 0.4);
        }

        .badge {
            display: inline-block;
            background: linear-gradient(90deg, #e94560, #c0392b);
            color: #fff;
            font-size: 0.72rem;
            font-weight: 700;
            letter-spacing: 0.12em;
            text-transform: uppercase;
            padding: 4px 14px;
            border-radius: 20px;
            margin-bottom: 24px;
        }

        h1 {
            font-size: 2.2rem;
            font-weight: 700;
            color: #ffffff;
            line-height: 1.2;
            margin-bottom: 14px;
        }

        h1 span { color: #e94560; }

        .subtitle {
            font-size: 0.98rem;
            color: #94a3b8;
            margin-bottom: 36px;
            line-height: 1.6;
        }

        .server-info {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255,255,255,0.07);
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 10px;
            padding: 10px 20px;
            font-size: 0.85rem;
            color: #a0aec0;
            margin-bottom: 36px;
        }

        .dot { width: 8px; height: 8px; border-radius: 50%; background: #48bb78; flex-shrink: 0; }

        .form-row {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

        input[type="text"] {
            flex: 1;
            padding: 12px 18px;
            border-radius: 10px;
            border: 1px solid rgba(255,255,255,0.15);
            background: rgba(255,255,255,0.08);
            color: #fff;
            font-size: 0.95rem;
            outline: none;
            transition: border-color 0.2s;
        }

        input[type="text"]::placeholder { color: #64748b; }
        input[type="text"]:focus { border-color: #e94560; }

        .btn {
            padding: 12px 28px;
            border-radius: 10px;
            border: none;
            background: linear-gradient(135deg, #e94560, #c0392b);
            color: #fff;
            font-size: 0.95rem;
            font-weight: 600;
            cursor: pointer;
            transition: opacity 0.2s, transform 0.1s;
            text-decoration: none;
            display: inline-block;
        }

        .btn:hover  { opacity: 0.88; transform: translateY(-1px); }
        .btn:active { transform: translateY(0); }

        .stack {
            display: flex;
            justify-content: center;
            gap: 10px;
            flex-wrap: wrap;
            margin-top: 32px;
        }

        .tag {
            background: rgba(255,255,255,0.07);
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 8px;
            padding: 5px 14px;
            font-size: 0.78rem;
            color: #94a3b8;
            letter-spacing: 0.04em;
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="badge">Live</div>
        <h1>Hello, <span>World</span> 👋</h1>
        <p class="subtitle">
            A simple Java web application powered by<br>Maven &amp; Apache Tomcat.
        </p>

        <div class="server-info">
            <span class="dot"></span>
            Running on <%= application.getServerInfo() %>
        </div>

        <form action="hello" method="get">
            <div class="form-row">
                <input type="text" name="name" placeholder="Enter your name…" maxlength="60" autocomplete="off">
                <button type="submit" class="btn">Say Hello</button>
            </div>
        </form>

        <div class="stack">
            <span class="tag">Java 17</span>
            <span class="tag">Maven 3.9</span>
            <span class="tag">Tomcat 10.1</span>
            <span class="tag">Jakarta EE 10</span>
        </div>
    </div>
</body>
</html>
