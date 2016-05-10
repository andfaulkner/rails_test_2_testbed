		namespace :process do
			desc "Kill all ruby processes"
			task :killall do
				puts "killing all ruby processes"
				run("ps aux | ")
			end
		end
