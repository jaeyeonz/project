package cookking4.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FavoriteVO {

	private String name;
	private String favIndr1;
	private String favIndr2;
	private String favIndr3;
	private int recipe_id;
	private String recipe_name;
	private String summary;
	private int point;
}
