#!/bin/bash
# Push Medi-Connect changes to GitHub

set -e

echo "🚀 Medi-Connect Docker Configuration - Push to GitHub"
echo "=================================================="
echo ""

cd ./medi-connect

# Check git status
echo "📋 Current Git Status:"
git status --short
echo ""

# Display commit info
echo "📝 Commit to Push:"
git log --oneline -1
echo ""

# Attempt push
echo "📤 Pushing to GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "View your changes at:"
    echo "https://github.com/sirword-ship-it/mediconnect"
else
    echo ""
    echo "⚠️  Push failed. Try one of the following:"
    echo ""
    echo "1. Use HTTPS with Personal Access Token:"
    echo "   git push https://<username>:<token>@github.com/sirword-ship-it/mediconnect.git"
    echo ""
    echo "2. Set up SSH keys:"
    echo "   ssh-keygen -t ed25519"
    echo "   # Add public key to GitHub Settings > SSH Keys"
    echo "   git remote set-url origin git@github.com:sirword-ship-it/mediconnect.git"
    echo "   git push origin main"
    echo ""
    echo "3. Store credentials:"
    echo "   git config --global credential.helper store"
    echo "   git push origin main"
fi
