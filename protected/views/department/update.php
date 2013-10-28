<?php
$this->menu=array(
	array('label'=>'Add Department','url'=>array('create')),
	array('label'=>'View Department','url'=>array('view','id'=>$model->id)),
	array('label'=>'List Department','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Update Department",
)); ?>
	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<?php $this->endWidget();?>
