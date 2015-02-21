{:user {:plugins 	[[bn-webservice/lein-template "0.1.0-SNAPSHOT"]
			         [lein-deps-tree "0.1.2"]
                     [lein-kibit "0.0.8"]
                     [lein-pprint "1.1.1"]]

        :dependencies [[slamhound "1.5.5"]]

        :aliases {"slamhound" ["run" "-m" "slam.hound"]}
}}
