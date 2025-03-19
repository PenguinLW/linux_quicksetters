<?
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Инструкция CRM");
?>
<style>
    .custom-container {
        max-width: 1200px;
        margin: 40px auto;
        padding: 30px;
        background: #1a202c;
        border-radius: 12px;
        box-shadow: 0 4px 6px rgba(0,0,0,0.3);
    }

    .custom-header {
        text-align: center;
        margin-bottom: 30px;
        padding: 20px 0;
        border-bottom: 2px solid #2d3748;
		background: linear-gradient(135deg, #1a202c 0%, #2d3748 100%);
    }

    .custom-title {
        color: #e2e8f0;
        font-size: 26px;
        font-weight: 600;
        margin: 0 0 15px;
        letter-spacing: 0.5px;
		text-shadow: 0 1px 2px rgba(0,0,0,0.1);
    }

    .custom-loader {
        text-align: center;
        padding: 40px;
        color: #a0aec0;
        font-style: italic;
    }

    .custom-back-link {
        display: inline-block;
        margin-top: 25px;
        color: #63b3ed;
        text-decoration: none;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        padding: 8px 16px;
        border: 1px solid #2d3748;
        border-radius: 6px;
        background: #2d3748;
    }

    .custom-back-link:hover {
        color: #4299e1;
        border-color: #4299e1;
        transform: translateY(-1px);
		box-shadow: 0 2px 4px rgba(0,0,0,0.2);
    }

    .custom-subtitle {
        color: #a0aec0;
        font-size: 16px;
        margin: 0;
    }
	#@keyframes spin {
	#	to { transform: rotate(360deg); }
	#}

	#.custom-loader:after {
	#	content: "";
	#	display: inline-block;
	#	width: 24px;
	#	height: 24px;
	#	border: 3px solid #ddd;
	#	border-top-color: #0066cc;
	#	border-radius: 50%;
	#	margin-left: 10px;
	#	animation: spin 1s linear infinite;
	}
</style>

<div class="custom-container">
    <div class="custom-loader">
        <h1 class="custom-title">Инструкция CRM (обработка лида)</h1>
        <p class="custom-subtitle">Инструкция CRM (обработка лида)</p>
		<video controls style="width: 100%;">
			<source src="/instructions/lead.mp4" type="video/mp4">
			Ваш браузер не поддерживает видео.
		</video>
		<div class="custom-header">
			<h1 class="custom-title"></h1>
			<p class="custom-subtitle"></p>
		</div>
        <h1 class="custom-title">Инструкция CRM (обработка сделки)</h1>
        <p class="custom-subtitle">Инструкция CRM (обработка сделки)</p>
		<video controls style="width: 100%;">
			<source src="/instructions/deal.mp4" type="video/mp4">
			Ваш браузер не поддерживает видео.
		</video>
    </div>
</div>

<script>
BX.ready(function() {
    BX.SidePanel.Instance.open(
		'/instructions/instruction.php',
        {
            allowChangeHistory: false,
            cacheable: false,
            width: 1200,
            events: {
                onClose: function() {
                    // Действия при закрытии панели
                    BX.addCustomEvent('SidePanel.Slider:onCloseComplete', function() {
						//window.location.reload();
						try {
							if(window.history.length > 1) {
								window.history.back();
								//window.location.href = previousUrl;
							} else {
								window.location.href = '/';
							}
						} catch(e) {
							console.error('Redirect error:', e);
						}
                    });
                }
            }
        }
    );
    
    // Показываем кнопку "Назад" через 3 секунды
	//setTimeout(function() {
	//    BX('custom-back-btn').style.display = 'block';
	//}, 3000);
});
</script>

<a href="/" class="custom-back-link" id="custom-back-btn" style="display: none;">
    ← Главная страница
</a>

<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>