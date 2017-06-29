"# MRHDemo" 

POSJournalReceiver - Picks up xml from file and places on topic
POSJournalEmailReceiver - Picks up CSV from Email and places on topic
POSJournalLoader - Subscribes to topic and persists to postgresDB

To run you will need a postgres JDBC driver in the lib folder of your Fuse installation. Create postgres DB using script create_mrh_epdb.sql (untested).

Test files:

POSJournalReceiver - data folder - testPOSData.xml
POSJournalEmailReceiver - data folder - testPOSDataBirmingham.csv & testPOSDataCroydon.csv
