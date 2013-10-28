<?php
$this->menu=array(
	array('label'=>'Add Customer','url'=>array('create')),
	array('label'=>'View Customer','url'=>array('view','id'=>$model->id)),
	array('label'=>'List Customer','url'=>array('admin')),
);
?>
<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Update Customer",
)); ?>
	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<?php $this->endWidget();?>
