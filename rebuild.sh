#/bin/bash 

# This is an example of how to build/re-build an instance of neo4j with all of the data files.
# It removes the existing database.

./bin/neo4j stop

rm -Rf ./data/databases/graph.db/*

./bin/neo4j-import --into ./data/databases/graph.db --nodes ./import/NODE.Instance.csv --nodes ./import/NODE.Packages.csv --nodes ./import/NODE.Nodes.csv --nodes ./import/NODE.RequirementText.csv --relationships ./import/REL.Packages.csv --relationships ./import/REL.NodeTypes.csv --relationships ./import/REL.Dependencies.csv --relationships ./import/REL.ReqtText.csv --relationships ./import/REL.Instance.csv

./bin/neo4j start

