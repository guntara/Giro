<?php
$this->menu=array(
	array('label'=>'Add Department','url'=>array('create')),
);
?>

<?php $this->beginWidget('zii.widgets.CPortlet', array(
	'title'=>"List Departments",
)); ?>
	<?php $this->widget('zii.widgets.grid.CGridView', array(
		'itemsCssClass'=>'table table-hover',
		'dataProvider'=>$model->search(),
		'filter'=>$model,
		'columns'=>array(
			array(
				'header'=>'#',
				'value'=>'$this->grid->dataProvider->pagination->currentPage * $this->grid->dataProvider->pagination->pageSize + ($row+1)',
				'headerHtmlOptions'=>array('width'=>'21px'),
				'htmlOptions'=>array('style'=>'text-align: center;'),
			),
			array(
				'name'=>'name',
				'type'=>'text',
				'headerHtmlOptions'=>array('width'=>'300px'),
				'htmlOptions'=>array('style'=>'text-align: left;'),

			),
			'detail',
			array(
				'header'=>'Action',
				'headerHtmlOptions'=>array('width'=>'50px'),
				'class'=>'bootstrap.widgets.TbButtonColumn',
			),
		),
	)); ?>
<?php $this->endWidget();?>
