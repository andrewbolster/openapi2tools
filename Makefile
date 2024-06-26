precommit:
	pre-commit run --all-files

test:
	poetry run pytest

ready:
	$(MAKE) precommit
	$(MAKE) test

itso:
	$(MAKE) precommit
	$(MAKE) test
	git add -A
	git commit --amend --no-edit
	git push -f
