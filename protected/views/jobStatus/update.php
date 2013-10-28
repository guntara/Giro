<?php
$this->menu=array(
	array('label'=>'Add Job Status','url'=>array('create')),
	array('label'=>'View Job Status','url'=>array('view','id'=>$model->id)),
	array('label'=>'List Job Status','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Update Job Status",
)); ?>
	<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>
<?php $this->endWidget();?>
