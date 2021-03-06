// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ru.sggr.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import ru.sggr.domain.Note;

privileged aspect Note_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Note.entityManager;
    
    public static final List<String> Note.fieldNames4OrderClauseFilter = java.util.Arrays.asList("author", "body");
    
    public static final EntityManager Note.entityManager() {
        EntityManager em = new Note().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Note.countNotes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Note o", Long.class).getSingleResult();
    }
    
    public static List<Note> Note.findAllNotes() {
        return entityManager().createQuery("SELECT o FROM Note o", Note.class).getResultList();
    }
    
    public static List<Note> Note.findAllNotes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Note o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Note.class).getResultList();
    }
    
    public static Note Note.findNote(Long id) {
        if (id == null) return null;
        return entityManager().find(Note.class, id);
    }
    
    public static List<Note> Note.findNoteEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Note o", Note.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Note> Note.findNoteEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Note o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Note.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Note.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Note.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Note attached = Note.findNote(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Note.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Note.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Note Note.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Note merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
