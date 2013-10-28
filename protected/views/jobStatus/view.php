<?php
$this->menu=array(
	array('label'=>'Add Job Status','url'=>array('create')),
	array('label'=>'Update Job Status','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete Job Status','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'List Job Status','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"View Job Status",
)); ?>
	<?php $this->widget('bootstrap.widgets.TbDetailView',array(
		'data'=>$model,
		'attributes'=>array(
			'name',
			'detail',
		),
	)); ?>
<?php $this->endWidget();?>
