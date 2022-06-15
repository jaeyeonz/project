package cookking4.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class VO {

	private String Log_id;
	private String pw;
	private String name;
	private String prfr_Ingr1;
	private String prfr_Ingr2;
	private String prfr_Ingr3;
}
