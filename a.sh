#!/bin/bash

# ⚡ سكريبت رفع مشروع Sonic-Lang على GitHub تلقائي

echo "🔹 إعداد Git …"

# ضبط اسم المستخدم والبريد (غيّره حسب حسابك)
git config --global user.name "felopaternady379"
git config --global user.email "felopaternady379@gmail.com"

# إنشاء الريبو المحلي لو مش موجود
if [ ! -d ".git" ]; then
    git init
    echo "✅ مشروع Git محلي تم إنشاؤه"
fi

# إضافة كل الملفات
git add .

# commit الملفات
git commit -m "Initial commit — SonicLang Complete"

# ربط الريبو البعيد
git remote add origin https://github.com/felopaternady379-eng/Sonic-Lang.git 2>/dev/null

# ضبط الفرع الرئيسي main
git branch -M main

# دفع الملفات للـ GitHub
echo "🔐 هيتطلب إدخال GitHub Token عند الطلب …"
git push -u origin main

echo "🎉 تم رفع المشروع بنجاح!"
