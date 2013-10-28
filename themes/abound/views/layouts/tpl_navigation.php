<?php $allAdmin = User::model()->getAdmin(); ?>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
    <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
     
          <!-- Be sure to leave the brand out there if you want it shown -->
          <a class="brand" href="#">  GPS <small>Giro Management</small></a>
          
          <div class="nav-collapse">
		<?php $this->widget('zii.widgets.CMenu',array(
                    'htmlOptions'=>array('class'=>'pull-right nav'),
                    'submenuHtmlOptions'=>array('class'=>'dropdown-menu'),
		    'itemCssClass'=>'item-test',
                    'encodeLabel'=>false,
                    'items'=>array(
                        array('label'=>'Dashboard', 'url'=>array('/site/index')),
			array('label'=>'Admin <span class="caret"></span>', 'url'=>'#', 'visible'=>!Yii::app()->user->isGuest,
				'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"), 'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
		                'items'=>array(
		                	array('label'=>'User Management', 'url'=>array('/user/admin'), 'visible'=>!Yii::app()->user->isGuest && Yii::app()->user->role==="admin"),
					array('label'=>'Jobs Category', 'url'=>array('/jobCategory/admin'), 'visible'=>!Yii::app()->user->isGuest && Yii::app()->user->role==="admin"),
					array('label'=>'Jobs Spesification', 'url'=>array('/job/admin'), 'visible'=>!Yii::app()->user->isGuest && Yii::app()->user->role==="admin"),
					array('label'=>'Jobs Status', 'url'=>array('/jobStatus/admin'), 'visible'=>!Yii::app()->user->isGuest && Yii::app()->user->role==="admin"),
					array('label'=>'Department', 'url'=>array('/department/admin')),
					array('label'=>'Location', 'url'=>array('/location/admin')),
		                )),
			array('label'=>'Customer <span class="caret"></span>', 'url'=>'#', 'visible'=>!Yii::app()->user->isGuest,
				'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"), 'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
		                'items'=>array(
					array('label'=>'Add Customer', 'url'=>array('/customers/create')),
					array('label'=>'Customer List', 'url'=>array('/customers/admin')),
		                )),
			array('label'=>'Employee <span class="caret"></span>', 'url'=>'#', 'visible'=>!Yii::app()->user->isGuest,
				'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"), 'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
		                'items'=>array(
					array('label'=>'Add Employee', 'url'=>array('/employee/create')),
					array('label'=>'Employee List', 'url'=>array('/employee/admin')),
		                )),
			array('label'=>'Giro <span class="caret"></span>', 'url'=>'#', 'visible'=>!Yii::app()->user->isGuest,
				'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"), 'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
		                'items'=>array(
					array('label'=>'Add Giro', 'url'=>array('/giro/create')),
					array('label'=>'Giro List', 'url'=>array('/giro/admin')),
		                )),
                        /*array('label'=>'My Account <span class="caret"></span>', 'url'=>'#', 'visible'=>!Yii::app()->user->isGuest,
				'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"), 'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
		                'items'=>array(
		                	array('label'=>'My Inbox <span class="badge badge-warning pull-right">1126</span>', 'url'=>array('#')),
					array('label'=>'My Project <span class="badge badge-important pull-right">112</span>', 'url'=>array('#')),
		                )),*/
                        array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                        array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
                    ),
                )); ?>
    	</div>
    </div>
	</div>
</div>

<div class="subnav navbar navbar-fixed-top">
    <div class="navbar-inner">
    	<div class="container">
        
        	<div class="style-switcher pull-left">
                <a href="javascript:chooseStyle('none', 60)" checked="checked"><span class="style" style="background-color:#0088CC;"></span></a>
                <a href="javascript:chooseStyle('style2', 60)"><span class="style" style="background-color:#7c5706;"></span></a>
                <a href="javascript:chooseStyle('style3', 60)"><span class="style" style="background-color:#468847;"></span></a>
                <a href="javascript:chooseStyle('style4', 60)"><span class="style" style="background-color:#4e4e4e;"></span></a>
                <a href="javascript:chooseStyle('style5', 60)"><span class="style" style="background-color:#d85515;"></span></a>
                <a href="javascript:chooseStyle('style6', 60)"><span class="style" style="background-color:#a00a69;"></span></a>
                <a href="javascript:chooseStyle('style7', 60)"><span class="style" style="background-color:#a30c22;"></span></a>
          	</div>
    	</div><!-- container -->
    </div><!-- navbar-inner -->
</div><!-- subnav -->
