<?php
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
class Collection extends CustomEloquent
{
    protected $table = "collections";
    public $timestamps = true;
    protected $primarykey = 'id';
    protected $table_fields = array("id", "user_id", "collection_name", "collection_slug", "collection_description", "collection_access", "collection_status", "featured_collection", "total_views", "total_comments", "created_at", "updated_at");

    public function addNew($data_arr)
	{
		$this->setFieldValues($data_arr);
		$this->save();
		return $this->id;
	}
}
