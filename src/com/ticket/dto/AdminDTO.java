package com.ticket.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="bus_data")
public class AdminDTO 
{
	@Id
	@Column(name="bus_id")
	@GenericGenerator(name="myGen",strategy="increment")
	@GeneratedValue(generator="myGen")
	private int bus_id;
	@Column(name="bus_name")
	private String bus_name;
	@Column(name="route_code")
	private String route_code;
	@Column(name="arrival")
	private String arrival;
	@Column(name="departure")
	private String departure;
	@Column(name="date")
	private String date;
	@Column(name="reg_number")
	private String reg_number;
	@Column(name="ticket_rate")
	private int ticket_rate;
	
	public AdminDTO() 
	{
		
	}
	
	public int getBus_id() {
		return bus_id;
	}
	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}
	public String getBus_name() {
		return bus_name;
	}
	public void setBus_name(String bus_name) {
		this.bus_name = bus_name;
	}
	public String getRoute_code() {
		return route_code;
	}
	public void setRoute_code(String route_code) {
		this.route_code = route_code;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getReg_number() {
		return reg_number;
	}
	public void setReg_number(String reg_number) {
		this.reg_number = reg_number;
	}
	public int getTicket_rate() {
		return ticket_rate;
	}
	public void setTicket_rate(int ticket_rate) {
		this.ticket_rate = ticket_rate;
	}

	@Override
	public String toString() {
		return "AdminDTO [bus_id=" + bus_id + ", bus_name=" + bus_name + ", route_code=" + route_code + ", arrival="
				+ arrival + ", departure=" + departure + ", date=" + date + ", reg_number=" + reg_number
				+ ", ticket_rate=" + ticket_rate + "]";
	}
	
}
