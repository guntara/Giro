<?php
$this->breadcrumbs=array(
	'Giros',
);

$this->menu=array(
	array('label'=>'Create Giro','url'=>array('create')),
	array('label'=>'Manage Giro','url'=>array('admin')),
);
?>

<h1>Giros</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
