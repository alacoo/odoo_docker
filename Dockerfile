# ابدأ من صورة Odoo 18 الرسمية
FROM odoo:18

# تحول إلى المستخدم الجذر (root) لتتمكن من تثبيت الحزم
USER root

# قم بتثبيت qifparse باستخدام pip
RUN pip install qifparse

# ارجع إلى مستخدم odoo الافتراضي
USER odoo