-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-sl10.eigbox.net
-- Generation Time: Jun 18, 2016 at 04:04 PM
-- Server version: 5.5.46
-- PHP Version: 4.4.9
-- 
-- Database: `treksand_IC_20100824_144554`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `wp_postmeta`
-- 

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=1659 DEFAULT CHARSET=utf8 AUTO_INCREMENT=1659 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `wp_usermeta`
-- 

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=87822 DEFAULT CHARSET=utf8 AUTO_INCREMENT=87822 ;
