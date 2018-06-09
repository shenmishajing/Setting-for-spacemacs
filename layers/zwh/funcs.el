;;creat a git project

(defvar zwh-project/path  "~/Project/")

(defvar zwh-project/name )


(defun zwh/creat-project()
  (interactive)
  (setq zwh-project/name (read-string ""))
  (async-shell-command (concat "cd " zwh-project/path " && git init " zwh-project/name " && cd " zwh-project/name "/ && git clone --bare .git " zwh-project/name ".git && scp -r " zwh-project/name ".git git@45.32.92.249:~/project/ && rm -rf " zwh-project/name ".git && touch README.org && git add . && git commit -m 'init' && git remote add origin git@45.32.92.249:~/project/" zwh-project/name ".git && git push --set-upstream origin master && git push") nil 0)
  )
