{:user {:plugins 	[[bn-service/lein-template "1.0.2"]
                     [lein-ancient "0.6.7"]
                     [lein-deps-tree "0.1.2"]
                     [cider/cider-nrepl "0.10.0-SNAPSHOT"]
                     [lein-kibit "0.0.8"]
                     [lein-pprint "1.1.1"]]

        :dependencies [[slamhound "1.5.5"]
                       [org.clojure/tools.nrepl "0.2.11"]]

        :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
