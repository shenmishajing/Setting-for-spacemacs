;;creat a git project

(defvar zwh-project/path  "~/Project/")

(defvar zwh-project/name )


(defun zwh/creat-project()
  (interactive)
  (setq zwh-project/name (read-string ""))
  (eshell-command (concat "git init " zwh-project/path zwh-project/name))
  (eshell-command (concat "cd " zwh-project/path zwh-project/name "/ && git clone --bare .git " zwh-project/name ".git"))
  (eshell-command (concat "cd " zwh-project/path zwh-project/name "/ && scp -r " zwh-project/name ".git git@45.32.92.249:~/project/"))
  (eshell-command (concat "cd " zwh-project/path zwh-project/name "/ && rm -rf " zwh-project/name ".git"))
  (eshell-command (concat "touch " zwh-project/path zwh-project/name "/README.org"))
  (eshell-command (concat "cd " zwh-project/path zwh-project/name "/ && git add ."))
  (eshell-command (concat "cd " zwh-project/path zwh-project/name "/ && git commit -m 'init'"))
  (eshell-command (concat "cd " zwh-project/path zwh-project/name "/ && git remote add origin git@45.32.92.249:~/project/" zwh-project/name ".git"))
  (eshell-command (concat "cd " zwh-project/path zwh-project/name "/ && git push --set-upstream origin master"))
  (eshell-command (concat "cd " zwh-project/path zwh-project/name "/ && git push"))
  )
