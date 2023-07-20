package board.bean;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class EditorDTO {
	
	private MultipartFile Filedata;

}
