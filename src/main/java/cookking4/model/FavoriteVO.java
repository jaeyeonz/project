package cookking4.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FavoriteVO {

	private String name;
	private String prfr_Ingr1;
	private String prfr_Ingr2;
	private String prfr_Ingr3;
	private int recipe_id;
	private String recipe_name;
	private String summary;
	private int point;
}
