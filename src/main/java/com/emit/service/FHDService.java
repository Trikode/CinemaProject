package com.emit.service;


import com.emit.bean.FHD;
import com.emit.dao.FHDDAO;
public class FHDService {
	
	FHDDAO dao = new FHDDAO();
	
	 public Integer create(FHD fhd){
		   return dao.create(fhd); 
	   }
	   
	   public void delete(FHD fhd) {
		   dao.delete(fhd);
	   }
	   
	   public String allFHDs() {
		    return dao.allFHDs();
		}

}
