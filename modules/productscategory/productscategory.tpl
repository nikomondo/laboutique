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
{if count($categoryProducts) > 0 && $categoryProducts !== false}
<section class="page-product-box ttproductscategory">
	<h4 class="title_block">
		<span class="ttblock-heading">
		{if $categoryProducts|@count == 1}
			{l s='%s other product in the same category:' sprintf=[$categoryProducts|@count] mod='productscategory'}
		{else}
			{l s='%s other products in the same category:' sprintf=[$categoryProducts|@count] mod='productscategory'}
		{/if}
		</span>
	</h4>
	
	{assign var="ttcount" value="1"}
	{assign var="tt_total" value="0"}
	{foreach from=$categoryProducts item='categoryProduct' name=categoryProduct}
		{$tt_total = $ttcount++}
	{/foreach}
	
	

		<div class="block_content">
			<ul id="ttproductscategory-carousel" class="tt-carousel product_list grid clearfix">
			{foreach from=$categoryProducts item='categoryProduct' name=categoryProduct}
				<li class="item">
					<div class="product-container">
						<div class="left-block">
							<div class="product-image-container">
								<a href="{$categoryProduct.link|escape:'html':'UTF-8'}" title="{$categoryProduct.legend|escape:'html':'UTF-8'}" class="product_img_link">									
										<img class="replace-2x img-responsive" src="{$link->getImageLink($categoryProduct.link_rewrite, $categoryProduct.id_image, 'home_default')|escape:'html':'UTF-8'}" alt="{$categoryProduct.legend|escape:'html':'UTF-8'}" width="{$homeSize.width}" height="{$homeSize.height}"/>
								{hook h='productImageHover' id_product=$categoryProduct.id_product}

									<div class="tthoverbg"></div>
								</a>
							</div>	
						</div>
						<div class="right-block">
							
							<h5 itemprop="name" class="product-name">
								<a href="{$link->getProductLink($categoryProduct.id_product, $categoryProduct.link_rewrite, $categoryProduct.category, $categoryProduct.ean13)|escape:'html':'UTF-8'}" title="{$categoryProduct.name|htmlspecialchars}">{$categoryProduct.name|truncate:34:'...'|escape:'html':'UTF-8'}</a>
							</h5>
							
												
							<div class="content_price">
								{if $ProdDisplayPrice && $categoryProduct.show_price == 1 && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}
									{if isset($categoryProduct.specific_prices) && $categoryProduct.specific_prices
									&& ($categoryProduct.displayed_price|number_format:2 !== $categoryProduct.price_without_reduction|number_format:2)}
					
										<span class="price special-price">{convertPrice price=$categoryProduct.displayed_price}</span>
										{if $categoryProduct.specific_prices.reduction && $categoryProduct.specific_prices.reduction_type == 'percentage'}
											<span class="price-percent-reduction small">-{$categoryProduct.specific_prices.reduction * 100}%</span>
										{/if}
										<span class="old-price">{displayWtPrice p=$categoryProduct.price_without_reduction}</span>
					
									{else}
										<span class="price">{convertPrice price=$categoryProduct.displayed_price}</span>
									{/if}
									
								{else}
								<br />
								{/if}
							</div>
							{if isset($categoryProduct.description_short)}
								<div class="product-desc" itemprop="description">
									<div class="product_description">
										{$categoryProduct.description_short|strip_tags:'UTF-8'|truncate:50:'...'}
									</div>
								</div>
							{/if}
							<div class="ttproducthover">
								<div class="functional-buttons clearfix">
									<div class="button-container">
										{if !$PS_CATALOG_MODE && ($categoryProduct.allow_oosp || $categoryProduct.quantity > 0)}
											<div class="no-print">
												<a class="exclusive button ajax_add_to_cart_button" href="{$link->getPageLink('cart', true, NULL, "qty=1&amp;id_product={$categoryProduct.id_product|intval}&amp;token={$static_token}&amp;add")|escape:'html':'UTF-8'}" data-id-product="{$categoryProduct.id_product|intval}" title="{l s='Add to cart' mod='productscategory'}">
													<span>{l s='Add to cart' mod='productscategory'}</span>
													<span class="tooltip">{l s='Add to cart'}</span>
												</a>
											</div>
										{/if}
									</div>
									{hook h='displayProductListFunctionalButtons' product=$categoryProduct}
									<div class="ttquickview">
								{if isset($quick_view) && $quick_view}
									<a class="quick-view" href="{$categoryProduct.link|escape:'html':'UTF-8'}" title="{l s='Quick view'}" rel="{$categoryProduct.link|escape:'html':'UTF-8'}">
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
			<a class="btn prev ttproductscategory_prev">{l s='Prev' mod='productscategory'}</a>
			<a class="btn next ttproductscategory_next">{l s='Next' mod='productscategory'}</a>
		</div>
	{/if}
</section>
{/if}
