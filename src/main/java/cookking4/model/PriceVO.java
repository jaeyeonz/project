package cookking4.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // 기본 메소드만 생성(Getter/Setter, toString)
@AllArgsConstructor // 모든 요소를 매개변수로 갖는 생성자.
@NoArgsConstructor
public class PriceVO {

	private int mart_num;
	private String mart_name;
	private String ingr_name;
	private String price;
	private String price_100;
	private int ingr_info_irdnt_sn;
	private String ingr_info_irdnt_nm;
	
	
	
}
