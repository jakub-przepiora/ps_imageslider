{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{if $homeslider.slides}
	<div id="carousel_slider">
		<div id="carousel" data-ride="carousel" class="carousel slide indicators_on" data-interval="{$homeslider.speed}" data-wrap="{(string)$homeslider.wrap}" data-pause="{$homeslider.pause}" data-touch="true" data-count="{$homeslider.slides|@count}">
			<ol class="carousel-indicators">
				{foreach from=$homeslider.slides item=slide key=idxSlide name='homeslider'}
					<li data-target="#carousel" data-slide-to="{$idxSlide}"{if $idxSlide == 0} class="active"{/if}></li>
				{/foreach}
			</ol>
			<ul class="carousel-inner" role="listbox">
				{foreach from=$homeslider.slides item=slide name='homeslider'}
				
					<li class="carousel-item {if $smarty.foreach.homeslider.first}active{/if}" role="option" aria-hidden="{if $smarty.foreach.homeslider.first}false{else}true{/if}">
					
						<figure class="d-block d-lg-flex flex-lg-nowrap flex-lg-row-reverse overflow-hidden position-relative">
						<a href="{$slide.url}" title="{l s='Check' d='Modules.Imageslider.Button'}" >
							{if $slide.image_mobile !=""}
							<img src="{$slide.image_mobile_url}" class="d-block d-md-none" alt="{$slide.legend|escape}" width="{$slide.sizes['0']}" height="{$slide.sizes['1']}" style="flex:0 0 {$slide.sizes['0']}px;" />
							{else}
							<img src="{$slide.image_url}" class="d-block d-md-none"  alt="{$slide.legend|escape}" width="{$slide.sizes['0']}" height="{$slide.sizes['1']}" style="flex:0 0 {$slide.sizes['0']}px;" />
							{/if}
							<img src="{$slide.image_url}" class="d-none d-md-block"  alt="{$slide.legend|escape}" width="{$slide.sizes['0']}" height="{$slide.sizes['1']}" style="flex:0 0 {$slide.sizes['0']}px;" />

							
						</a>
							
							{if $slide.description}
								<figcaption class="caption d-flex align-items-start flex-column justify-content-center" style="flex:0 0 calc(100% - {$slide.sizes['0']}px);">
									<div class="caption-description">
										{$slide.description nofilter}
										<p class="btn_more d-block">{strip}
											<a href="{$slide.url}" title="{l s='Check' d='Modules.Imageslider.Button'}" class="btn btn-primary d-none d-lg-inline-block">
												{l s='Check' d='Modules.Imageslider.Button'}
											</a>
											<a href="{$slide.url}" title="{l s='Check' d='Modules.Imageslider.Button'}" class="btn btn-primary btn-small d-inline-block d-lg-none">
												<svg width="7" height="10" fill="none" stroke="black" class="mx-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 7 10"><path d="m1 1 4 4-4 4" stroke-width="2" stroke-linecap="round"/></svg><svg width="7" height="10" fill="none" stroke="black" class="mx-1 ml-n1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 7 10"><path d="m1 1 4 4-4 4" stroke-width="2" stroke-linecap="round"/></svg>
											</a>
										{/strip}</p>
									</div>
								</figcaption>
							{/if}
						</figure>
					
					</li>
				{/foreach}
			</ul>
			{*<div class="direction" aria-label="{l s='Carousel buttons' d='Shop.Theme.Global'}">
				<a class="left carousel-control" href="#carousel" role="button" data-slide="prev" aria-label="{l s='Previous' d='Shop.Theme.Global'}">
					<span class="icon-prev" aria-hidden="true">
						<i class="simpleico-arrow-left"></i>
					</span>
				</a>
				<a class="right carousel-control" href="#carousel" role="button" data-slide="next" aria-label="{l s='Next' d='Shop.Theme.Global'}">
					<span class="icon-next" aria-hidden="true">
						<i class="simpleico-arrow-right"></i>
					</span>
				</a>
			</div>*}
		</div>
	</div>
{/if}