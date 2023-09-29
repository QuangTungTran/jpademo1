package mvc.main;

import mvc.configuration.JPAConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import mvc.repository.AccountRepository;
import mvc.service.AccountService;

public class MainTestTransaction {
    static AnnotationConfigApplicationContext applicationContext = new AnnotationConfigApplicationContext(JPAConfig.class);
    static AccountRepository accountRepository = applicationContext.getBean("accountRepository", AccountRepository.class);
    static AccountService accountService = applicationContext.getBean("accountService", AccountService.class);
    public static void main(String[] args) throws Exception {

    }
}
