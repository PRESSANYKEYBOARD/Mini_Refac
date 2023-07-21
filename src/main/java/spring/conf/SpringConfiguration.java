package spring.conf;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

@Configuration
@PropertySource("classpath:spring/db.properties")
@EnableTransactionManagement // =<tx:annotation-driven transaction-manager="transactionManager"/>
public class SpringConfiguration {

	@Value("${jdbc.driver}")
	private String driver;
	@Value("${jdbc.url}")
	private String url;
	@Value("${jdbc.username}")
	private String username;
	@Value("${jdbc.password}")
	private String password;
	
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUrl(url);
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		
		return basicDataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource());	
		sqlSessionFactoryBean.setConfigLocation(new ClassPathResource("spring/mybatis-config.xml"));
		sqlSessionFactoryBean.setMapperLocations(new ClassPathResource("user/dao/userMapper.xml"), 
												 new ClassPathResource("board/dao/fundingMapper.xml"), 
												 new ClassPathResource("board/dao/donationMapper.xml"), 
												 new ClassPathResource("board/dao/supportMapper.xml"));
		
		return sqlSessionFactoryBean.getObject(); // sqlSessionFactory를 리턴해주는 메소드
	}
	
	@Bean
	public SqlSessionTemplate sqlSession() throws Exception{
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
		return sqlSessionTemplate;
	}
	
	
	@Bean
	public DataSourceTransactionManager transactionManager(){
		DataSourceTransactionManager dataSourceTransactionManager = new DataSourceTransactionManager(dataSource());
		return dataSourceTransactionManager;
	}
	
    @Bean
    public MultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSizePerFile(10 * 1024 * 1024);
        return multipartResolver;
    }
    
    @Bean
    public ByteArrayMultipartFileEditor byteArrayMultipartFileEditor() {
        return new ByteArrayMultipartFileEditor();
    }
}

/*
 만약에 mapper.xml이 여러개일 경우
1.
sqlSessionFactoryBean.setMapperLocations(new ClassPathResource("user/dao/userMapper.xml"),
										new ClassPathResource("member/dao/memberMapper.xml"),
										new ClassPathResource("board/dao/boardMapper.xml"),
										...);

2.
필드에다가
@Autowired
private ApplicationContext context;
*/
 	//sqlSessionFactoryBean.setMapperLocations(context.getResources("classpath:*/dao/*Mapper.xml")


//SpringConfiguration 일반 자바 파일이 아니다.
//applicationContext.xml과 같은 환경설정 파일이다.