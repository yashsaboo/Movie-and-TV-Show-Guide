package insertData;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.StringTokenizer;

public class CreateQueries {

	int size = 0;

	//Generates Data based on the FilePath provided and table name
	public void generate(String fileName, String tableName) throws Exception {

		size = 3;
		String str;

		try {
			String strFile = fileName;

			@SuppressWarnings("resource")
			BufferedReader br = new BufferedReader(new FileReader(strFile));
			String strLine = "";
			StringTokenizer st = null;

			while ((strLine = br.readLine()) != null) {
				st = new StringTokenizer(strLine, ",");

				str = "insert into "+tableName+ " values('";
				while (st.hasMoreTokens()) {
					str += st.nextToken() + "','";
				}
				str = str.substring(0, str.length() - 2);
				str += ");";
				System.out.println(str);
			}

		} catch (Exception e) {
			System.out.println("Exception while reading the file : " + e);
		}

	}

	public static void main(String[] args) throws Exception {
		CreateQueries obj = new CreateQueries();
		//obj.generate("src/Actor.csv", "actor");
		//obj.generate("src/Color.csv", "color");
		//obj.generate("src/Director.csv", "director");
		//obj.generate("src/Ethnicity.csv", "ethnicity");
		//obj.generate("src/Genre.csv", "genre");
		//obj.generate("src/IMDb.csv", "imdb");
		//obj.generate("src/Plot Keywords.csv", "plot_keywords");
		//obj.generate("src/Specification.csv", "specification");
		//obj.generate("src/Movie.csv", "movie");
		//obj.generate("src/Performs.csv", "performs");
		//obj.generate("src/TV Show.csv", "tv_show");
		//obj.generate("src/PerformsTVShow.csv", "performstvshow");
		obj.generate("src/TVShowDesc.csv", "tvshowdesc");
	}

}
