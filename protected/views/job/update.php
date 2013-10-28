<?php
$this->menu=array(
	array('label'=>'Add Job','url'=>array('create')),
	array('label'=>'View Job','url'=>array('view','id'=>$model->id)),
	array('label'=>'List Job','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Update Job",
)); ?>
	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<?php $this->endWidget();?>
