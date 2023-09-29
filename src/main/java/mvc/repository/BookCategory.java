package mvc.repository;

import mvc.entity.BookEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookCategory extends CrudRepository<BookEntity,Integer> {
    List<BookEntity> findByAuthor(String author);
    List<BookEntity> findByNameAndAuthor(String name, String author);
    List<BookEntity> findByNameContainingOrAuthorContaining(String name, String author);
    BookEntity findByBookDetailsIsbn(String isbn);
    List<BookEntity> findByBookDetailsPriceLessThan(int price);
    List<BookEntity> findByBookDetailsPriceLessThanEqual(int Price);
    List<BookEntity> findByBookDetailsPriceGreaterThanEqual(int Price);
    List<BookEntity> findByNameContaining (String name);

}
