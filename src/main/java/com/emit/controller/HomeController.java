package com.emit.controller;



import java.time.LocalDate;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.stream.Collectors;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import com.emit.service.*;


import com.emit.bean.*;

@Controller
public class HomeController {
	FilmService fserv = new FilmService();
	FHDService fhdserv = new FHDService();
	TicketService tserv = new TicketService();
	HourService hserv = new HourService();
	SeatService sserv = new SeatService();
	
	
	@GetMapping("/homePage")
	public String homePage(Model m, HttpServletRequest request) {
		ServletContext application = request.getServletContext(); 
		
		  if (application.getAttribute("filmssss") == null) {
		        String films = fserv.allFilms();
		        application.setAttribute("filmssss", films);
		    }
		    
		    if (application.getAttribute("filmshourssss") == null) {
		        String fhds = fhdserv.allFHDs();
		        application.setAttribute("filmshourssss", fhds);
		    }
		    
		    if (application.getAttribute("ticketssss") == null) {
		        String tickets = tserv.allTickets();
		        application.setAttribute("ticketssss", tickets);
		    }
		    
		    if (application.getAttribute("hourssss") == null) {
		        String hours = hserv.allHours();
		        application.setAttribute("hourssss", hours);
		    }
		    
		    if (application.getAttribute("seatssss") == null) {
		        String seats = sserv.allSeats();
		        application.setAttribute("seatssss", seats);
		    }
		//System.out.println(films);

		/*// Parse the JSON response
		ObjectMapper mapper = new ObjectMapper();
		List<Film> films = null;
		try {
		    films = mapper.readValue(json, new TypeReference<List<Film>>() {});
		} catch (Exception e) {
		    e.printStackTrace();
		}
		System.out.println(films);
		*/
		
		/*application.setAttribute("filmssss", films);
		application.setAttribute("filmshourssss", fhds);
		application.setAttribute("ticketssss", tickets);
		application.setAttribute("hourssss", hours);
		application.setAttribute("seatssss", seats);*/
		//m.addAttribute("films",films);
		//m.addAttribute("filmshours",fhds);
		
		return "homePage";
	}

    @PostMapping("/moviePage")
    public String getFilmId(@RequestParam String id) {
        return "moviePage";
    }
    
    @GetMapping("/aggiungiFilm")
    public String aggiungiFilm() {
    	return "aggiungiFilm";
    }
    @GetMapping("/aggiungiEvento")
    public String aggiungiEvento() {
    	
    	return "aggiungiEvento";
    }
    
    @GetMapping("/bigliettoPdfPage")
    public String bigliettoPdfPage() {
    	return "bigliettoPdfPage";
    }
    
    @GetMapping("/monitoraggioIncassi")
    public String monitoraggioIncassi(Model m) {
        Map<Integer, Integer> bookedSeatsCountMap = tserv.getBookedSeatsCountByFilmHour();

        List<Map<String, Integer>> filmHourDataList = new ArrayList<>();

        for (Map.Entry<Integer, Integer> entry : bookedSeatsCountMap.entrySet()) {
            Integer filmHourId = entry.getKey();
            Integer bookedSeatsCount = entry.getValue();

            Map<String, Integer> filmHourData = new HashMap<>();
            filmHourData.put("bookedSeatsCount", bookedSeatsCount);
            filmHourData.put("filmHourId", filmHourId);

            filmHourDataList.add(filmHourData);
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String jsonArray;
        try {
            jsonArray = objectMapper.writeValueAsString(filmHourDataList);
        } catch (Exception e) {
            // Handle the exception appropriately
            jsonArray = "[]"; // Provide a default value if an exception occurs
        }

        System.out.println(jsonArray);
        m.addAttribute("bookedSeats", jsonArray);

        return "monitoraggioIncassi";
    }

    
    @GetMapping("/postiLiberi")
    public String postiLiberi() {
    	return "postiLiberi";
    }
    
    @GetMapping("/sideBar")
    public String sideBar() {
    	return "sideBar";}
    	
    @PostMapping("/getTicketInfo")
    public String getTicketInfo(
            @RequestParam("FHDIndex") int FHDIndex, 
            @RequestParam("seatsIndex") List<Integer> seatsIndex,
            HttpSession session,
            HttpServletRequest request,
            Model m) {
    	ServletContext application = request.getServletContext(); 
        User2 u = (User2) session.getAttribute("user");
        FHD fhd = new FHD();
        fhd.setIdFilmHours(FHDIndex);
        
        LocalDate timeBuy = LocalDate.now(); 
        
        for (Integer seatIndex : seatsIndex) {
            Seat seat = new Seat();
            seat.setIdseats(seatIndex);
            
            Ticket ticket = new Ticket();
            ticket.setIDUser(u);
            ticket.setIDSeat(seat);
            ticket.setIDHourFilm(fhd);
            ticket.setTimeBuy(timeBuy); 
     
            tserv.create(ticket);
            
        }
       
        String tickets = tserv.allTickets();
        application.setAttribute("ticketssss", tickets);
        
        return "bigliettoPdfPage";
    }

    @PostMapping("/getNewFilm")
	public String getNewFilm(
			@RequestParam("titolo")String title,
			@RequestParam("descrizione")String summary,
			@RequestParam("durata")String lenght,
			@RequestParam("locandina")String image,
			@RequestParam("trailer")String trailer,
			HttpServletRequest request) {
		Film film = new Film(0, title, summary, lenght, image, trailer);
		fserv.create(film);
		ServletContext application = request.getServletContext(); 
    	String films = fserv.allFilms();
    	application.removeAttribute("filmssss");
    	application.setAttribute("filmssss", films);
		return "aggiungiEvento";
	}
    @PostMapping("/getNewEvent")
    public String getNewEvent(
    		@RequestParam("giorno")int day,
    		@RequestParam("ora")int hour,
    		@RequestParam("film")int film,
    		Model m) {
    	Date d = new Date();
    	d.setIddates(day);
    	Hour h = new Hour();
    	h.setIdhours(hour);
    	Film f = new Film();
    	f.setIdfilms(film);
    	FHD fhd = new FHD();
    	fhd.setIDDate(d);
    	fhd.setIDHour(h);
    	fhd.setIDFilm(f);
    	
    	fhdserv.create(fhd);
    	return "aggiungiEvento";
    }
}
