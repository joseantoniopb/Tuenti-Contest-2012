#!/usr/bin/env ruby
(1..20).each{|n|
File.open("IN_TEST#{n}","w+").write `curl -s -f https://contest.tuenti.net/Solver/getTestInput -d token=CHALLENGE_#{n} -d version=2012-4.0` 
File.open("IN_SUBMIT#{n}","w+").write `curl -s -f https://contest.tuenti.net/Solver/getSubmitInput -d token=CHALLENGE_#{n} -d version=2012-4.0`
}
