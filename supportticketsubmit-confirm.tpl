<div class="card">
    <div class="card-body p-3 extra-padding">
        <h3 class="card-title">{lang key="createNewSupportRequest"}</h3>

        <div class="alert alert-success text-center" style="border-radius: 10px; box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);">
            <strong>
                {lang key='supportticketsticketcreated'}
                <a id="ticket-number" href="viewticket.php?tid={$tid}&c={$c}" class="alert-link" style="color: #26c6da; text-decoration: none; transition: color 0.3s ease;" onmouseover="this.style.color='#40c4da';" onmouseout="this.style.color='#26c6da';">#{$tid}</a>
            </strong>
        </div>

        <div class="row">
            <div class="col-12 text-center">
                <p class="minimalist-desc">{lang key='supportticketsticketcreateddesc'}</p>
            </div>
        </div>

        <br />

        <p class="text-center mt-15">
            <a href="viewticket.php?tid={$tid}&c={$c}" class="btn btn-default" style="
                background: #F57C00;
                color: #ffffff;
                padding: 6px 16px;
                font-size: 14px;
                font-weight: 500;
                border-radius: 6px;
                border: none;
                text-decoration: none;
                transition: background-color 0.3s ease;
                display: inline-block;
            " onmouseover="this.style.background='#E65100';" onmouseout="this.style.background='#F57C00';">
                Bildirimi Oku
            </a>
        </p>
    </div>
</div>

<style>
    /* Card ve genel stil */
    .card {
        border-radius: 10px;
        border: 1px solid #ddd;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        background: #ffffff;
    }

    .card-body {
        padding: 20px;
    }

    .card-title {
        font-size: 20px;
        font-weight: 500;
        color: #333;
        margin-bottom: 20px;
    }

    /* Alert stil */
    .alert {
        padding: 15px;
        margin-bottom: 20px;
        border-radius: 10px;
        background-color: #d4edda;
        border-color: #c3e6cb;
        color: #155724;
    }

    .alert-success .alert-link {
        font-weight: 500;
    }

    /* Minimalist yazı stili */
    .minimalist-desc {
        font-family: 'Roboto', sans-serif;
        font-size: 14px;
        font-weight: 400;
        color: #333;
        text-align: center;
        margin: 0;
        line-height: 1.5;
    }

    /* Buton stil */
    .btn-default {
        text-decoration: none;
        display: inline-block;
    }

    .mt-15 {
        margin-top: 15px;
    }
</style>