<?php
$this->menu=array(
	array('label'=>'Add Department','url'=>array('create')),
	array('label'=>'Update Department','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete Department','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'List Department','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Update Department",
)); ?>
	<?php $this->widget('bootstrap.widgets.TbDetailView',array(
		'data'=>$model,
		'attributes'=>array(
			'name',
			'detail',
		),
	)); ?>
<?php $this->endWidget();?>
