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

<!-- Block payment logo module -->
<section id="paiement_logo_block_left" class="paiement_logo_block footer-block block col-sm-3">
	<h4>{l s='Payment Logo' mod='blockpaymentlogo'}</h4>
	<ul class="toggle-footer">
		<li class="visa">
			<a href="{$link->getCMSLink($cms_payement_logo)|escape:'html'}">
				<img src="{$img_dir}ttvisa.png" alt="visa" width="49" height="31" />
			</a>
		</li>
		<li class="mastercard">
			<a href="{$link->getCMSLink($cms_payement_logo)|escape:'html'}">
				<img src="{$img_dir}ttjcb.png" alt="ttjcb" width="49" height="31" />
			</a>
		</li>
		<li class="paypal">
			<a href="{$link->getCMSLink($cms_payement_logo)|escape:'html'}">
				<img src="{$img_dir}ttpaypal.png" alt="paypal" width="49" height="31" />
			</a>
		</li>
		<li class="stripe">
			<a href="{$link->getCMSLink($cms_payement_logo)|escape:'html'}">
				<img src="{$img_dir}ttstripe.png" alt="stripe" width="49" height="31" />
			</a>
		</li>
<!--		<li class="amex">
			<a href="{$link->getCMSLink($cms_payement_logo)|escape:'html'}">
				<img src="{$img_dir}ttamex.png" alt="amex" width="40" height="31" />
			</a>
		</li>
-->	</ul>
</section>
<!-- /Block payment logo module -->