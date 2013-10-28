<?php
$this->menu=array(
	array('label'=>'Add Giro','url'=>array('create')),
);
?>
<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"List Giro",
)); ?>
	<?php $this->widget('zii.widgets.grid.CGridView', array(
		'itemsCssClass'=>'table table-hover',
		'id'=>'giro-grid',
		'dataProvider'=>$model->search(),
		//'filter'=>$model,
		'columns'=>array(
			array(
				'header'=>'#',
				'value'=>'$this->grid->dataProvider->pagination->currentPage * $this->grid->dataProvider->pagination->pageSize + ($row+1)',
				'headerHtmlOptions'=>array('width'=>'5%'),
				'htmlOptions'=>array('style'=>'text-align: center;'),
			),
			array(
				'name'=>'customer_id',
				'type'=>'text',
				'value'=> array($this,'getCustomers'),
			),
			array(
				'name'=>'employee',
				'type'=>'text',
				'headerHtmlOptions'=>array('width'=>'20%'),
				'value'=> array($this,'getEmployee'),
			),
			array(
				'name'=>'due_date',
				'type'=>'text',
				'headerHtmlOptions'=>array('width'=>'15%'),
				'htmlOptions'=>array('style'=>'text-align: center;'),
			),
			array(
				'name'=>'type',
				'type'=>'text',
				'headerHtmlOptions'=>array('width'=>'15%'),
				'filter'=>array('0'=>'Giro','1'=>'Bank Transfer'),
				'value'=>'($data->type=="0")?("Giro"):("Bank Transfer")',
				'htmlOptions'=>array('style'=>'text-align: center;'),
			),
			array(
				'header'=>'Action',
				'headerHtmlOptions'=>array('width'=>'50px'),
				'class'=>'bootstrap.widgets.TbButtonColumn',
			),
		),
	)); ?>
<?php $this->endWidget();?>
