/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dto;

/**
 *
 * @author PC
 */
public class CategoryBookDTO {
    private String id;
    private String name;
    private String subjectId;

    public CategoryBookDTO() {
    }

    public CategoryBookDTO(String id, String name, String subjectId) {
        this.id = id;
        this.name = name;
        this.subjectId = subjectId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    @Override
    public String toString() {
        return "CategoryBookDTO{" + "id=" + id + ", name=" + name + ", subjectId=" + subjectId + '}';
    }
    
    
}
