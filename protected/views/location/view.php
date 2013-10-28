<?php
$this->menu=array(
	array('label'=>'Add Location','url'=>array('create')),
	array('label'=>'Update Location','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete Location','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'List Location','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"View Location",
)); ?>
	<?php $this->widget('bootstrap.widgets.TbDetailView',array(
		'data'=>$model,
		'attributes'=>array(
			'name',
			'country',
			'state',
			'city',
			'address',
			'zip',
			'phone',
			'fax',
			'notes',
		),
	)); ?>
<?php $this->endWidget();?>
