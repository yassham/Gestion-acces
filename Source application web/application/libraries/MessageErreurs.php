<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
/**
 * Description of messageErreurs
 *
 * @author Yassine Hamouten
 */
class MessageErreurs {
   
    public $erreur;
    
    public function setErreur($erreur){
        
        $this->erreur = $erreur;
        
    }
    
    public function getErreur(){
        
        return $this->erreur;
        
    }
    
}
