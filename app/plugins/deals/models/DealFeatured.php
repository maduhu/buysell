<?php namespace App\Plugins\Deals\Models;
/**
 * Buy Sell
 *
 * PHP version 5
 *
 * @category   PHP
 * @package    buysell
 * @subpackage Core
 * @author     Agriya <info@agriya.com>
 * @copyright  2018 Agriya Infoway Private Ltd
 * @license    http://www.agriya.com/ Agriya Infoway Licence
 * @link       http://www.agriya.com
 */
class DealFeatured extends \Eloquent
{
    protected $table = "deal_featured";
    public $timestamps = false;
    protected $primarykey = 'deal_featured_id';
    protected $table_fields = array("deal_featured_id", "deal_id", "date_featured_from", "date_featured_to");
}