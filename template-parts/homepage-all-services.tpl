<!doctype html>
<html lang="tr">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>WhatsApp Hattı Banner</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        /* Custom styles for the blink animation and font */
        body {
            font-family: 'Roboto', 'Inter', Arial, sans-serif; /* Default body font */
            color: #4a5568;
            background-color: #f7fafc;
        }

        /* Styles for the heading within the banner */
        .footer-section-banner h6 {
            font-family: 'Poppins', sans-serif; /* Poppins for headings */
        }

        /* Styles for the paragraph within the banner */
        .footer-section-banner p {
            font-family: 'Roboto', sans-serif; /* Roboto for paragraphs */
        }

        /* Blink animation for the WhatsApp button */
        @keyframes blink {
            0% {
                background-color: #86efac; /* Tailwind green-300 */
                box-shadow: 0 4px 12px rgba(134, 239, 172, 0.3);
            }
            50% {
                background-color: #4ade80; /* Tailwind green-400 */
                box-shadow: 0 6px 15px rgba(74, 222, 128, 0.5);
            }
            100% {
                background-color: #86efac; /* Tailwind green-300 */
                box-shadow: 0 4px 12px rgba(134, 239, 172, 0.3);
            }
        }

        .animate-blink {
            animation: blink 1.5s infinite;
        }

        .animate-blink:hover {
            animation: none; /* Stop animation on hover */
            background-color: #22c55e !important; /* Tailwind green-600 */
            box-shadow: 0 6px 15px rgba(34, 197, 94, 0.4) !important;
        }
    </style>
</head>
<body>
    <section class="footer-section-banner bg-gradient-to-r from-blue-700 to-gray-800 py-6 px-4 rounded-none shadow-lg w-full mt-0">
        <div class="container mx-auto max-w-[1200px]">
            <div class="flex flex-col md:flex-row items-center justify-between text-center md:text-left">
                <div class="md:w-3/4 mb-6 md:mb-0">
                    <h6 class="text-2xl md:text-3xl font-bold text-white mb-2 leading-tight">
                        Anında Destek: WhatsApp Hattımızla Bağlantı Kurun!
                    </h6>
                    <p class="text-white text-opacity-90 text-sm md:text-base">
                        Siparişlerinizle ilgili tüm sorularınızı anında yanıtlamak için WhatsApp hattımız hizmetinizde. Hızlı çözümler için hemen bize ulaşın!
                    </p>
                </div>
                <div class="md:w-1/4 flex justify-center md:justify-end">
                    <a class="
                        custom-whatsapp-button
                        bg-green-300
                        text-gray-900
                        font-bold
                        py-3
                        px-6
                        rounded-xl
                        shadow-xl
                        hover:bg-green-400
                        transition-all
                        duration-300
                        flex
                        items-center
                        justify-center
                        min-w-[200px]
                        h-[50px]
                        whitespace-nowrap
                        animate-blink
                        "
                        href="https://wa.me/902166062115?text=Merhaba, size hostingkontrol.com sitesi üzerinden yazıyorum;"
                    >
                        <i class="fab fa-whatsapp mr-2 text-xl"></i> Şimdi WhatsApp'tan Yaz!
                    </a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>

