
class csv{
  
  String filename;
String[] rawData;
int[] years;

csv(String f){
  filename = f;
  rawData = loadStrings(filename);
  }
int[] convert_csv_to_array(){
     years = new int[rawData.length];
    for(int i=1;i<rawData.length;i++){
      String [] thisRow = split(rawData[i],",");
      years[i-1] = int(thisRow[1]);
      }
    return years;
    }
}
