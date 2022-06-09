package cookking4.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class VO {

	private String userId;
	private String pw;
	private String name;
	private String favIndr1;
	private String favIndr2;
	private String favIndr3;
}
