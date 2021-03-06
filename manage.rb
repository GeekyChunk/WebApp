#!/usr/bin/env ruby

INP = ARGV

if INP[0] == 'push'
	print "Commit: "
	com = STDIN.gets.chomp
	cmd1 = 'git add -A'
	cmd2 = "git commit -m " + "'" + com + "'" 
	cmd3 = 'git push'
	system(cmd1)
	system(cmd2)
	system(cmd3)
	puts "Done"
end

if INP[0] == 'start'
	#cmd1 = 'cd backend && nohup ./manage.py runserver &'
	#cmd2 = 'pm2 start GeekyChunk'
	#system(cmd1)
	#system(cmd2)
	puts "Coming Soon"
end

if INP[0] == 'smoke'
	puts 'Starting Development Server Do Not Close Window!'
	cmd1 = 'cd backend && ./manage.py runserver &'
	cmd2 = 'cd frontend && yarn dev'
	system(cmd1)
	system(cmd2)
	"!!! Running In Silent NohUp (Kill by PID To stop)!!!"
end

if INP[0] == 'help'
	puts "Usage:\n\t-> push git push, commit and add all\n\t-> smoke start Development Server (Smoke Test)\n\t-> start run Deployment Server Only Smoke Test\n\n!! Deploy Tutorial In Repo Wiki"
end

cmds = ['start', 'smoke', 'push', 'status']