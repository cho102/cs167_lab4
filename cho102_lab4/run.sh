mvn clean package
yarn jar target/cho102_lab4-1.0-SNAPSHOT.jar edu.ucr.cs.cs167.cho102.Filter hdfs:///nasa_19950801.tsv hdfs:///filter_output.tsv 200
mvn clean package
yarn jar target/cho102_lab4-1.0-SNAPSHOT.jar edu.ucr.cs.cs167.cho102.Aggregation hdfs:///nasa_19950801.tsv hdfs:///aggregation_output.tsv
