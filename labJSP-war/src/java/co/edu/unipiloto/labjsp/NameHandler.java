/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unipiloto.labjsp;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author Michael
 */
public class NameHandler {
   private String name;
   private String fechaN;
   private String edad;
   private int hora = LocalDateTime.now().getHour();

    public NameHandler() {
        name = null;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFechaN() {
        return fechaN;
    }

    public void setFechaN(String fechaN) {
        this.fechaN = fechaN;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate fechaNacimiento = LocalDate.parse(this.fechaN, formatter);
        Period year = Period.between(fechaNacimiento, LocalDate.now());
        this.edad = ""+year.getYears();
    }
}
