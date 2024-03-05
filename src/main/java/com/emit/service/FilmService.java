package com.emit.service;

import java.util.List;

import com.emit.bean.Film;

import com.emit.dao.FilmDAO;

public class FilmService {
	FilmDAO dao = new FilmDAO();
	
	 public Integer create(Film film){
		   return dao.create(film); 
	   }
	   
	   public void delete(Film film) {
		   dao.delete(film);
	   }
	   
	   public String allFilms() {
		    return dao.allFilms();
		}

}
