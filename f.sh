#!/data/data/com.termux/files/usr/bin/bash

# 🚀 إعداد متغيرات المشروع
REPO_URL="https://felopaternady379-eng:YOUR_TOKEN_HERE@github.com/felopaternady379-eng/Sonic-Lang.git"
COMMIT_MSG="Initial commit — SonicLang Complete"

# 🔹 إعداد Git
git config --global user.name "felopaternady379-eng"
git config --global user.email "felopaternady379@gmail.com"

# 🔹 إنشاء مستودع محلي لو مش موجود
if [ ! -d ".git" ]; then
  git init
  echo "✅ مشروع Git محلي تم إنشاؤه"
fi

# 🔹 إضافة كل الملفات
git add .

# 🔹 عمل commit
git commit -m "$COMMIT_MSG"

# 🔹 ربط الريبو البعيد
git remote remove origin 2>/dev/null
git remote add origin $REPO_URL

# 🔹 رفع المشروع
git push -u origin main

echo "🎉 تم رفع المشروع بنجاح!"
