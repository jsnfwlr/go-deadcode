.PHONY: article articleplus imported importedplus package
.DEFAULT: article

	
article:
	@echo "using the code as it is in the article"
	@git checkout main > /dev/null 2>&1
	deadcode ./...

articleplus:
	@echo "using the code as it is in the article, with an added call to Goodbyer.Greet()"
	@git checkout articleplus > /dev/null 2>&1
	deadcode ./...

imported:
	@echo "using the code as it is in the article, but with Greeter{} imported from pkg/greet"
	@git checkout imported > /dev/null 2>&1
	deadcode ./...

importedplus:
	@echo "using the code from imported, with an added call to greet.Goodbyer.Greet()"
	@git checkout importedplus > /dev/null 2>&1
	deadcode ./...

package:
	@echo "using the code from imported, but the main.go removed"
	@git checkout package > /dev/null 2>&1
	deadcode ./...
