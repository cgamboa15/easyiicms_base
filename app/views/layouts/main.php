<?php
use yii\bootstrap\NavBar;
use yii\bootstrap\Nav;

use yii\easyii\modules\shopcart\api\Shopcart;
use yii\easyii\modules\subscribe\api\Subscribe;
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;
use pceuropa\menu\Menu;//toco cambiarle el nombre a la clase del modulo menu porque entraba en conflicto con el widget Menu de arriba
$goodsCount = count(Shopcart::goods());
?>
<?php $this->beginContent('@app/views/layouts/base.php'); ?>
<div id="wrapper" class="container">
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
		<div>

                <div class="collapse navbar-collapse" id="navbar-menu">
                    <?
			NavBar::begin(['brandLabel' => 'Easyii shop','brandUrl' => Url::home(),]);
 
			echo Nav::widget([ 'options' => ['class' => 'navbar-nav navbar-left'],
					    'items' => Menu::NavbarLeft(1)  // argument is id of menu

					]); 
 			echo Nav::widget([
					    'items' => [
						['label' => 'Home', 'url' => ['site/index']],
					    ['label' => 'News', 'url' => ['news/index']],
					    ['label' => 'Articles', 'url' => ['articles/index']],
					    ['label' => 'Gallery', 'url' => ['gallery/index']],
					    ['label' => 'Guestbook', 'url' => ['guestbook/index']],
					    ['label' => 'FAQ', 'url' => ['faq/index']],
					    ['label' => 'Contact', 'url' => ['/contact/index']],
					    ['label' => 'Article 1', 'url' => ['/articles/view/first-article-title']],	
					    ],
					    'options' => ['class' => 'navbar-nav navbar-left'],
					]);

			echo Nav::widget([ 'options' => ['class' => 'navbar-nav navbar-right'],
					    'items' => Menu::NavbarRight(1)
					]);

			NavBar::end();
?>
                    <a href="<?= Url::to(['/shopcart']) ?>" class="btn btn-default navbar-btn navbar-right" title="Complete order">
                        <i class="glyphicon glyphicon-shopping-cart"></i>
                        <?php if($goodsCount > 0) : ?>
                            <?= $goodsCount ?> <?= $goodsCount > 1 ? 'items' : 'item' ?> - <?= Shopcart::cost() ?>$
                        <?php else : ?>
                            <span class="text-muted">empty</span>
                        <?php endif; ?>
                    </a>

                </div>
            </div>
        </nav>
    </header>
    <main>
        <?php if($this->context->id != 'site') : ?>
            <br/>
            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ])?>
        <?php endif; ?>
        <?= $content ?>
        <div class="push"></div>
    </main>
</div>
<footer>
    <div class="container footer-content">
        <div class="row">
            <div class="col-md-2">
                Subscribe to newsletters
            </div>
            <div class="col-md-6">
                <?php if(Yii::$app->request->get(Subscribe::SENT_VAR)) : ?>
                    You have successfully subscribed
                <?php else : ?>
                    <?= Subscribe::form() ?>
                <?php endif; ?>
            </div>
            <div class="col-md-4 text-right">
                ©2015 noumo
            </div>
        </div>
    </div>
</footer>
<?php $this->endContent(); ?>
