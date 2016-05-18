package ru.sggr.domain;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Note.class)
public interface NoteRepository {
}
