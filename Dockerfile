# ابدأ من صورة Odoo 18 الرسمية
FROM odoo:18

# تحول إلى المستخدم الجذر (root) لتتمكن من تثبيت الحزم
USER root


# --- خطوات إصلاح pip (ضرورية ولا يمكن تبسيطها) ---

# الخطوة 1: تحديث أدوات البناء الخاصة بـ pip
# ⚠️ إضافة --break-system-packages لتجاوز خطأ PEP 668
# 💡 إضافة --ignore-installed لتجاوز خطأ "Cannot uninstall wheel"
RUN python3 -m pip install --upgrade --break-system-packages --ignore-installed pip setuptools wheel

# الخطوة 2: تثبيت الحزمة المطلوبة
# ⚠️ إضافة --break-system-packages لتجاوز خطأ PEP 668
RUN python3 -m pip install --no-cache-dir --break-system-packages -vvv qifparse

# ارجع إلى مستخدم odoo الافتراضي
USER odoo

