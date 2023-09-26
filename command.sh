# REPO_URL https://github.com/Aadithyakp/my-app
# Commands used in steps 1-8 

# Create react app 
npx create-react-app my-app
cd my-app

# Log into GitHub CLI 
gh auth login

# Create repo and checkout to the "update_logo" branch
gh repo create my-app --public
git checkout -b update_logo

# After making changes, commit and push them up

git add .
git commit -m "Update logo to Propelle and link to Dirtmate"
git push origin update_logo

# Create and then approve a PR
gh pr create --base master --head update_logo --title "Update logo and link"
gh pr merge
