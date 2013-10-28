<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'giro-form',
	'enableAjaxValidation'=>false,
	'type'=>'horizontal',
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

	<p class="help-block">Fields with <span class="required">*</span> are required.</p>
	<?php echo $form->errorSummary($model); ?>
	<?php echo $form->dropDownListRow($model,'customer_id',CHtml::listData(Customers::model()->findAll(),'id','company_name'), array('prompt'=>'--- Select Customer ---',));?>
	<?php echo $form->hiddenField($model,'employee',array('type'=>"hidden",'size'=>2, 'value'=>Yii::app()->user->id)); ?>
	<div class="control-group ">
		<label class="control-label required" for="Giro_due_date">Due Date Giro <span class="required">*</span></label>
		<div class="controls"><span class="add-on"><i class="icon-calendar"></i></span>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker',	array(
			'model'=>$model,
			'attribute'=>'due_date',
			'options' => array(
				'dateFormat'=>'yy-mm-dd',
				'changeMonth' => 'true',
				'changeYear' => 'true',
				'constrainInput' => 'false',
				'duration'=>'fast',
				'showAnim' =>'slide',
			),
		)); ?>
		</div>
	</div>
	<?php echo $form->fileFieldRow($model, 'filename'); ?>
	<?php echo $form->dropDownListRow($model, 'type', array('0'=>'Giro','1'=>'Bank Transfer'), array('empty'=>'--- Select Images Type ---'));?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Create' : 'Save',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
