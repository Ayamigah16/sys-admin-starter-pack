#!/bin/bash

# -----------------------------------------
# Automates creation of directories, files,
# permissions, and shows final structure.
# -----------------------------------------

BASE_DIR="$HOME/devops_challenge"
DIRS=("logs" "configs" "scripts")

echo "Starting environment setup..."

# Create base working directory
mkdir -p "$BASE_DIR"
cd "$BASE_DIR" || exit
echo "Working inside: $BASE_DIR"

# Create required directories
for dir in "${DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "Directory already exists: $dir"
    else
        mkdir "$dir"
        echo "Directory created: $dir"
    fi
done

# Create files with sample content
echo "System log initialized." > logs/system.log
echo "APP_ENV=production" > configs/app.conf
echo "#!/bin/bash" > scripts/backup.sh
echo "echo \"Backup started...\"" >> scripts/backup.sh

# Apply permissions
chmod 644 logs/system.log
chmod 444 configs/app.conf
chmod 755 scripts/backup.sh

# Display directory structure
echo
echo "Final Directory Tree:"
tree .

echo
echo "Permissions Overview:"
ls -lR .

echo "Setup complete."

