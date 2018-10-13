/**
  * Copyright 2018 bejson.com 
  */
package com.besjon.pojo;

/**
 * Auto-generated: 2018-10-13 16:32:14
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Result {

    private Location location;
    private int precise;
    private int confidence;
    private int comprehension;
    private String level;
    public void setLocation(Location location) {
         this.location = location;
     }
     public Location getLocation() {
         return location;
     }

    public void setPrecise(int precise) {
         this.precise = precise;
     }
     public int getPrecise() {
         return precise;
     }

    public void setConfidence(int confidence) {
         this.confidence = confidence;
     }
     public int getConfidence() {
         return confidence;
     }

    public void setComprehension(int comprehension) {
         this.comprehension = comprehension;
     }
     public int getComprehension() {
         return comprehension;
     }

    public void setLevel(String level) {
         this.level = level;
     }
     public String getLevel() {
         return level;
     }

}