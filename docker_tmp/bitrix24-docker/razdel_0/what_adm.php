<?
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("WHAT ADM CRM");
?>

<script>
BX.ready(function() {
    BX.SidePanel.Instance.open(
		'/bitrix/admin/fileman_admin.php',
        {
            allowChangeHistory: false,
            cacheable: false,
			//width: 1200,
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

});
</script>


<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>