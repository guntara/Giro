<?php
$this->menu=array(
	array('label'=>'Add Location','url'=>array('create')),
	array('label'=>'View Location','url'=>array('view','id'=>$model->id)),
	array('label'=>'List Location','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Update Locations",
)); ?>
	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<?php $this->endWidget();?>
