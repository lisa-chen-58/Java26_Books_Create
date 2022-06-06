package com.lisa.allbooks.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.lisa.allbooks.models.Book;
import com.lisa.allbooks.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepository;
	
	public BookService(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}
	
	 // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    // updates the book
    public Book updateBook(Book updatedBook) {
    	return bookRepository.save(updatedBook);
    }
    
    public void deleteBook(Long id) {
    	Optional<Book> deleteBookAction = bookRepository.findById(id);
    	if(deleteBookAction.isPresent()) {
    		bookRepository.deleteById(id);
    	} 
    	else {
    		System.out.println("Failed to delete");
    	}
    }
}
