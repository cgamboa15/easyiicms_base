<?php
$this->title = Yii::t('easyii/jelou', 'Create article');
?>
<?= $this->render('_menu', ['category' => $category]) ?>
<?= $this->render('_form', ['model' => $model]) ?>