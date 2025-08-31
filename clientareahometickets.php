<?php

use WHMCS\Database\Capsule;

// Bu hook, müşteri panelinin ana sayfası yüklendiğinde çalışır.
// Amacı, müşterinin aktif destek taleplerini alıp Smarty şablonuna iletmektir.
add_hook('ClientAreaPage', 1, function($vars) {
    // Müşterinin oturum açıp açmadığını kontrol et.
    // Oturum yoksa, herhangi bir işlem yapmadan çıkar.
    if (!isset($_SESSION['uid'])) {
        return;
    }

    // Oturum açmış müşterinin ID'sini al.
    $clientId = $_SESSION['uid'];

    // `tbltickets` tablosundan müşteriye ait olan ve durumu 'Closed' olmayan (yani aktif)
    // destek taleplerini sorgula.
    // Gerekli sütunları (id, tid, c, title, status) seç ve son yanıta göre azalan sırada sırala.
    $tickets = Capsule::table('tbltickets')
        ->where('userid', $clientId)
        ->where('status', '!=', 'Closed') // Kapalı talepleri hariç tutar
        ->select('id', 'tid', 'c', 'title', 'status') // Ticket ID, numarası, client kodu, başlık ve durumu seçer
        ->orderBy('lastreply', 'desc') // Son yanıta göre en yeni olanlar üstte olacak şekilde sıralar
        ->get();

    // Smarty şablonuna gönderilecek ticket verilerini bir diziye hazırla.
    $ticketData = [];
    foreach ($tickets as $ticket) {
        $ticketData[] = [
            'id' => $ticket->id,
            'tid' => $ticket->tid,       // Ticket numarası
            'c' => $ticket->c,           // Ticket'a özgü client kodu (URL için gerekli)
            'title' => $ticket->title,   // Ticket başlığı
            'status' => $ticket->status // Ticket durumu (Open, Answered, On Hold vb.)
        ];
    }

    // Smarty şablonuna eklenecek değişkenleri döndür.
    // 'homeTickets': Aktif destek taleplerinin listesi.
    // 'hasHomeTickets': Aktif destek talebi olup olmadığını belirten boolean değer.
    return [
        'homeTickets' => $ticketData,
        'hasHomeTickets' => count($ticketData) > 0
    ];
});

