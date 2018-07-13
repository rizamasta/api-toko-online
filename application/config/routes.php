<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route = array(
    /**
     * =====================================
     * USER
     * =====================================
     */
    'default_controller' => "Default/MyController/index",
    'auth/login' => "User/Login/login",
    'profile/myprofile' => "User/Profile/index",
    'register' => "User/Register/index",


    /**
     * =====================================
     * MASTER
     * =====================================
     */
    /**
     * DESCRIPTION/COMPANY
     */
    'deskripsi/view' =>'Master/Company/view',
    'deskripsi/view/(:any)' =>'Master/Company/view/$1',
    'deskripsi/create' =>'Master/Company/create',
    'deskripsi/update/(:any)' =>'Master/Company/update/$1',
    'deskripsi/delete/(:any)' =>'Master/Company/delete/$1',
    /**
     * KATEGORI
     */    
    'kategori/add' =>'Master/Kategori/add',
    'kategori/view' =>'Master/Kategori/view',
    'kategori/view/(:num)' =>'Master/Kategori/view/$1',
    'kategori/update/(:num)' =>'Master/Kategori/update/$1',
    'kategori/delete/(:num)' =>'Master/Kategori/delete/$1',

    /**
     * KONSUMEN
     */
    'konsumen/add' =>'Master/Konsumen/add',
    'konsumen/view' =>'Master/Konsumen/view',
    'konsumen/view/(:num)' =>'Master/Konsumen/view/$1',
    'konsumen/update/(:num)' =>'Master/Konsumen/update/$1',
    'konsumen/delete/(:num)' =>'Master/Konsumen/delete/$1',

    /**
     * MEREK
     */
    'merek/add' =>'Master/Merek/add',
    'merek/view' =>'Master/Merek/view',
    'merek/view/(:num)' =>'Master/Merek/view/$1',
    'merek/update/(:num)' =>'Master/Merek/update/$1',
    'merek/delete/(:num)' =>'Master/Merek/delete/$1',
    /**
     * BARANG
     */
    'barang/add' =>'Master/Barang/add',
    'barang/view' =>'Master/Barang/view',
    'barang/view/(:num)' =>'Master/Barang/view/$1',
    'barang/update/(:num)' =>'Master/Barang/update/$1',
    'barang/delete/(:num)' =>'Master/Barang/delete/$1',
    /**
     * SUPLIER
     */
    'suplier/add' =>'Master/Suplier/add',
    'suplier/view' =>'Master/Suplier/view',
    'suplier/view/(:num)' =>'Master/Suplier/view/$1',
    'suplier/update/(:num)' =>'Master/Suplier/update/$1',
    'suplier/delete/(:num)' =>'Master/Suplier/delete/$1',

    /**
     * =====================================
     * TRANSAKSI
     * =====================================
     */
    /**
     * PENJUALAN
     */
    'penjualan/add' =>'Transaksi/Penjualan/add',
    'penjualan/add-detail/(:num)' =>'Transaksi/Penjualan/add_detail/$1',
    'penjualan/delete-detail/(:num)' =>'Transaksi/Penjualan/delete_detail/$1',
    'penjualan/view' =>'Transaksi/Penjualan/view',
    'penjualan/view/(:num)' =>'Transaksi/Penjualan/view/$1',
    'penjualan/update/(:num)' =>'Transaksi/Penjualan/update/$1',
    'penjualan/delete/(:num)' =>'Transaksi/Penjualan/delete/$1',

    /**
     * PEMBELIAN
     */
    'pembelian/add' =>'Transaksi/Pembelian/add',
    'pembelian/add-detail/(:num)' =>'Transaksi/Pembelian/add_detail/$1',
    'pembelian/delete-detail/(:num)' =>'Transaksi/Pembelian/delete_detail/$1',
    'pembelian/view' =>'Transaksi/Pembelian/view',
    'pembelian/view/(:num)' =>'Transaksi/Pembelian/view/$1',
    'pembelian/update/(:num)' =>'Transaksi/Pembelian/update/$1',
    'pembelian/delete/(:num)' =>'Transaksi/Pembelian/delete/$1',
    /**
     * HUTANG
     */
    'hutang/add' =>'Transaksi/Hutang/add',
    'hutang/bayar/(:num)' =>'Transaksi/Hutang/bayar/$1',
    /**
     * PIHUTANG
     */
    'pihutang/add' =>'Transaksi/Pihutang/add',
    'pihutang/bayar/(:num)' =>'Transaksi/Pihutang/bayar/$1',
    
    /** 
     * =====================================
     * REPORT
     * =====================================
     */
    'report/company' =>'Report/Master/company',
    'report/kategori' =>'Report/Master/kategori',
    'report/konsumen' =>'Report/Master/konsumen',
    'report/suplier' =>'Report/Master/suplier',
    'report/barang' =>'Report/Master/barang',
    'report/merek' =>'Report/Master/merek',

    'report/penjualan' =>'Report/Transaksi/penjualan',
    'report/pembelian' =>'Report/Transaksi/pembelian',
    'report/hutang' =>'Report/Transaksi/hutang',
    'report/pihutang' =>'Report/Transaksi/pihutang',

    /**
     * =====================================
     * CUSTOM ROUTE
     * =====================================
     */
    'upload/receipt' =>  "Upload/Upload/receipt",
    '404_override' => 'Custom/error_404',
    'translate_uri_dashes' => TRUE
);
