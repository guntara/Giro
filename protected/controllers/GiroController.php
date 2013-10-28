<?php

class GiroController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		$allAdmin = User::model()->getAdmin();
		$allSuper = User::model()->getSuperUser();
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('admin','view'),
				'users'=>array('@'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','delete','update'),
				'users'=>$allSuper,
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('create','delete','index','update'),
				'users'=>$allAdmin,
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Giro;
		$path = Yii::app()->basePath . '/../uploads';
		if (!is_dir($path)) mkdir($path);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Giro']))
		{
			$model->attributes=$_POST['Giro'];
			if (@!empty($_FILES['Giro']['name']['filename'])) {
				$model->filename = $_POST['Giro']['filename'];
				if ($model->validate(array('filename'))) { $model->filename = CUploadedFile::getInstance($model, 'filename'); }
				else { $model->filename = ''; }

				$model->filename->saveAs($path . '/' . time() . '_' . str_replace(' ', '_', strtolower($model->filename)));
				$model->filename = time() . '_' . str_replace(' ', '_', strtolower($model->filename));
			}
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);
		$path = Yii::app()->basePath . '/../uploads';

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Giro']))
		{
			$model->attributes=$_POST['Giro'];
			if (@!empty($_FILES['Giro']['name']['filename'])) {
				$model->filename = $_POST['Giro']['filename'];
				if ($model->validate(array('filename'))) { $model->filename = CUploadedFile::getInstance($model, 'filename'); }
				else { $model->filename = ''; }

				$model->filename->saveAs($path . '/' . time() . '_' . str_replace(' ', '_', strtolower($model->filename)));
				$model->filename = time() . '_' . str_replace(' ', '_', strtolower($model->filename));
			}
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		if(Yii::app()->request->isPostRequest)
		{
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if(!isset($_GET['ajax']))
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
		else
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Giro');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Giro('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Giro']))
			$model->attributes=$_GET['Giro'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=Giro::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='giro-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}

	/** ---------------------------------------------------------------- ADD FUNCTIONS ---------------------------------------------------------------- **/
	public function getCustomers($data)
	{
		$provider = Customers::model()->findByPK($data->customer_id);
		return $provider->company_name;
	}

	public function getEmployee($data)
	{
		$user = User::model()->findByPK($data->employee);
		$provider = Employee::model()->findByPK($user->employee);
		if ($provider) return ($provider->firstname . ' ' . $provider->middle . ' ' . $provider->lastname);
	}
}
