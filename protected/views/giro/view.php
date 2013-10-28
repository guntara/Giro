<?php
$bUrl=Yii::app()->baseUrl;

$this->menu=array(
	array('label'=>'Add Giro','url'=>array('create')),
	array('label'=>'Update Giro','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete Giro','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'List Giro','url'=>array('admin')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Giro from $model->customer_id",
)); ?>
	<?php $this->widget('bootstrap.widgets.TbDetailView',array(
		'data'=>$model,
		'attributes'=>array(
			'customer_id',
			'employee',
			'due_date',
			array(
				'name' => 'type',
				'type' => 'text',
				'value' => ($model->type=="0")?("Giro"):("Bank Transfer"),
			),
			array(
				'name' => 'filename',
				'type' => 'raw',
				'value' => CHtml::image(Yii::app()->request->baseUrl.'/uploads/'.$model->filename, 'alt', array('width'=>300,'height'=>300)),
			),
		),
	)); ?>
<?php $this->endWidget();?>
