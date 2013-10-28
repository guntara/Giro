<?php
$this->menu=array(
	array('label'=>'Add Giro','url'=>array('create')),
	array('label'=>'View Giro','url'=>array('view','id'=>$model->id)),
	array('label'=>'List Giro','url'=>array('admin')),
);
?>
<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Update Giro",
)); ?>
	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<?php $this->endWidget();?>
