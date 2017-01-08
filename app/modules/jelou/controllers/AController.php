<?php
namespace app\modules\jelou\controllers;

use yii\easyii\components\CategoryController;

class AController extends CategoryController
{
    /** @var string  */
    public $categoryClass = 'app\modules\jelou\models\Category';

    /** @var string  */
    public $moduleName = 'jelou';
}