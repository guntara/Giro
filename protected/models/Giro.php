<?php

/**
 * This is the model class for table "{{giro}}".
 *
 * The followings are the available columns in table '{{giro}}':
 * @property integer $id
 * @property integer $customer_id
 * @property integer $employee
 * @property integer $type
 * @property string $due_date
 * @property string $filename
 * @property string $update_at
 */
class Giro extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Giro the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{giro}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('customer_id, employee, due_date', 'required'),
			array('customer_id, employee, type', 'numerical', 'integerOnly'=>true),
			array('update_at','default', 'value'=>new CDbExpression('NOW()'), 'setOnEmpty'=>false,'on'=>'insert'),
			array('update_at','default', 'value'=>new CDbExpression('NOW()'), 'setOnEmpty'=>false,'on'=>'update'),
			array('filename', 'file', 'allowEmpty' => false, 'types'=>'jpeg,jpg,gif,png', 'maxSize' => 3*(1024*1024), 'tooLarge' => 'Too Lage! Only 3MB file allow.',
				//'maxFiles' => 3, 
				//'tooMany' => 'some error message',
				//'types' => $this->types,  //extension names separated by space or comma
				//'wrongType' => 'some error message',
			),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, customer_id, employee, type, due_date, filename, update_at', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'customer_id' => 'Customer Name',
			'employee' => 'Sales On Duty',
			'due_date' => 'Due Date Giro',
			'filename' => 'Giro Images',
			'type' => 'Images Type',
			'update_at' => 'Update At',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('customer_id',$this->customer_id);
		$criteria->compare('employee',$this->employee);
		$criteria->compare('type',$this->type);
		$criteria->compare('due_date',$this->due_date,true);
		$criteria->compare('filename',$this->filename,true);
		$criteria->compare('update_at',$this->update_at,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
