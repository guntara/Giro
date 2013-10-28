<?php
$this->menu=array(
	array('label'=>'List Customers','url'=>array('index')),
	array('label'=>'Create Customers','url'=>array('create')),
);
?>
<?php
$this->menu=array(
	array('label'=>'List Customer','url'=>array('admin')),
	array('label'=>'Add Customer','url'=>array('create')),
);
?>
<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"Manage Customers",
)); ?>
	<?php $this->widget('zii.widgets.grid.CGridView', array(
		'itemsCssClass'=>'table table-hover',
		'id'=>'customers-grid',
		'dataProvider'=>$model->search(),
		'filter'=>$model,
		'columns'=>array(
			array(
				'header'=>'#',
				'value'=>'$this->grid->dataProvider->pagination->currentPage * $this->grid->dataProvider->pagination->pageSize + ($row+1)',
				'headerHtmlOptions'=>array('width'=>'2%'),
				'htmlOptions'=>array('style'=>'text-align: center;'),
			),
			array(
				'name'=>'erp_id',
				'type'=>'text',
				'headerHtmlOptions'=>array('width'=>'30%'),
				'htmlOptions'=>array('style'=>'text-align: left;'),

			),
			'company_name',
			array(
				'header'=>'Action',
				'headerHtmlOptions'=>array('width'=>'10%'),
				'class'=>'bootstrap.widgets.TbButtonColumn',
			),
		),
	)); ?>
<?php $this->endWidget();?>
