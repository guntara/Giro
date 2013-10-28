<?php
/* @var $this SiteController */
$this->pageTitle=Yii::app()->name;
$baseUrl = Yii::app()->theme->baseUrl;
?>

<?php $this->beginWidget('bootstrap.widgets.TbHeroUnit',array('heading'=>'Welcome to '.CHtml::encode(Yii::app()->name).' Application')); ?><?php $this->endWidget(); ?>
<?php //$dept = User::model()->getUserDept(3); if(isset($dept)) foreach($dept as $data) echo $data; ?>
