<?php
$this->menu=array(
	array('label'=>'Add JobCategory','url'=>array('create')),
	array('label'=>'View JobCategory','url'=>array('view','id'=>$model->id)),
	array('label'=>'List JobCategory','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Update Job Category",
)); ?>
	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<?php $this->endWidget();?>
