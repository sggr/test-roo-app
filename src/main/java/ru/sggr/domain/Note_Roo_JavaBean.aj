// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ru.sggr.domain;

import ru.sggr.domain.Note;

privileged aspect Note_Roo_JavaBean {
    
    public String Note.getAuthor() {
        return this.author;
    }
    
    public void Note.setAuthor(String author) {
        this.author = author;
    }
    
    public String Note.getBody() {
        return this.body;
    }
    
    public void Note.setBody(String body) {
        this.body = body;
    }
    
}
