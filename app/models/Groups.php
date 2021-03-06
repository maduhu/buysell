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
class Groups extends CustomEloquent
{
    protected $table = "groups";
    public $timestamps = false;
    protected $primarykey = 'id';
    protected $table_fields = array("id", "name", "permissions", "created_at", "updated_at");

    public function addNew($data_arr)
	{
		$this->setFieldValues($data_arr);
		$this->save();
	}
}