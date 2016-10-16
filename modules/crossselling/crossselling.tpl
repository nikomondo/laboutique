{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if isset($orderProducts) && count($orderProducts)}
	<section class="page-product-box ttcrossselling">
		<h4 class="title_block">
			<span class="ttblock-heading">
				{if $page_name == 'product'}
					{l s='Customers who bought this product also bought:' mod='crossselling'}
				{else}
					{l s='We recommend' mod='crossselling'}
				{/if}
			</span>
		</h4>
		
		{assign var="ttcount" value="1"}
		{assign var="tt_total" value="0"}
		{foreach from=$orderProducts item='orderProduct' name=orderProduct}
			{$tt_total = $ttcount++}
		{/foreach}
		
		
		
			<div class="block_content">
				<ul id="ttcrossselling-carousel" class="tt-carousel product_grid grid clearfix">
					{foreach from=$orderProducts item='orderProduct' name=orderProduct}
						<li class="item" itemprop="isRelatedTo" itemscope itemtype="https://schema.org/Product">
							<div class="product-container">
								<div class="left-block">
									<div class="product-image-container">
								<a href="{$orderProduct.link|escape:'html':'UTF-8'}" title="{$orderProduct.legend|escape:'html':'UTF-8'}" class="product_img_link">
										<img class="replace-2x img-responsive" src="{$link->getImageLink($orderProduct.link_rewrite, $orderProduct.id_image, 'home_default')|escape:'html':'UTF-8'}" alt="{$orderProduct.legend|escape:'html':'UTF-8'}" width="{$homeSize.width}" height="{$homeSize.height}"/>
											{hook h='productImageHover' id_product=$orderProduct.id_product}
											<div class="tthoverbg"></div>
										</a>
									</div>	
										
								</div>
								<div class="right-block">
									
									<h5 itemprop="name" class="product-name">
										<a itemprop="url" href="{$orderProduct.link|escape:'html':'UTF-8'}" title="{$orderProduct.name|htmlspecialchars}">
											{$orderProduct.name|truncate:25:'...'|escape:'html':'UTF-8'}
										</a>
									</h5>
									
														
									<div class="content_price">
										{if $crossDisplayPrice AND $orderProduct.show_price == 1 AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}
											<span class="price">
												{convertPrice price=$orderProduct.displayed_price}
											</span>
										{/if}
									</div>
									{if isset($orderProduct.description_short)}
										<div class="product-desc" itemprop="description">
											<div class="product_description">
												{$orderProduct.description_short|strip_tags:'UTF-8'|truncate:50:'...'}
											</div>
										</div>
									{/if}
									<div class="ttproducthover">
										<div class="functional-buttons clearfix">
											<div class="button-container">
												{if !$PS_CATALOG_MODE && ($orderProduct.allow_oosp || $orderProduct.quantity > 0)}
													<a class="exclusive button ajax_add_to_cart_button" href="{$link->getPageLink('cart', true, NULL, "qty=1&amp;id_product={$orderProduct.id_product|intval}&amp;token={$static_token}&amp;add")|escape:'html':'UTF-8'}" data-id-product="{$orderProduct.id_product|intval}" title="{l s='Add to cart' mod='crossselling'}">
														<span>{l s='Add to cart' mod='crossselling'}</span>
														<span class="tooltip">{l s='Add to cart'}</span>
													</a>
												{/if}
											</div>
											{hook h='displayProductListFunctionalButtons' product=$orderProduct}
											<div class="ttquickview">
										{if isset($quick_view) && $quick_view}
											<a class="quick-view" href="{$orderProduct.link|escape:'html':'UTF-8'}" title="{l s='Quick view'}" rel="{$orderProduct.link|escape:'html':'UTF-8'}">
												<span>{l s='Quick view'}</span>
												<span class="tooltip">{l s='Quick view'}</span>
											</a>
										{/if}
									</div>
										</div>
									</div>
								</div>
							</div>
						</li>
					{/foreach}
				</ul>
			</div>
	
		{if $tt_total > 4}
			<div class="customNavigation">
				<a class="btn prev ttcrossselling_prev">{l s='Prev' mod='crossselling'}</a>
				<a class="btn next ttcrossselling_next">{l s='Next' mod='crossselling'}</a>
			</div>
		{/if}
		
	</section>
{/if}
