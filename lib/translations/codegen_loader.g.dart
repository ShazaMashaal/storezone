// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "login": {
    "email": "البريد الالكتروني",
    "password": "كلمة المرور",
    "passwordHint": "ستة أحرف على الأقل",
    "forgotPassword": "هل نسيت كلمة المرور",
    "login": "تسجيل الدخول",
    "haveAccount": "ليس لديك حساب ؟",
    "register": "انشاء حساب"
  },
  "register": {
    "yourName": "اسمك",
    "alreadyHaveAccount": "لديك حساب بالفعل ؟",
    "reenterPassword": "أعد كتابة كلمة السر",
    "continue": "بالمتابعة ، فإنك توافق على",
    "conditions": "شروط استخدام أمازون",
    "and": "و",
    "privacy": "إشعار الخصوصية",
    "phoneNumber": "رقم الهاتف",
    "confirmPassword": "تأكيد كلمة المرور",
    "confirmPasswordHint": "أعد كتابة كلمة المرور"
  },
  "forgotPassword": {
    "title": "نسيت كلمة المرور",
    "resetPassword": "أعد تعيين كلمة المرور",
    "confirmEmail": "أدخل البريد الإلكتروني المرتبط بحسابك."
  },
  "pinCode": {
    "title": "التحقق من البريد الإلكتروني",
    "enterCode": "أدخل الرمز المرسل إلى",
    "didntRecieveCode": " ألم تتلق الرمز؟",
    "resend": "إعادة الإرسال",
    "verify": "تحقق"
  },
  "settings": {
    "title": "الاعدادات",
    "account": "تعديل الملف الشخصي",
    "notifications": "الاشعارات",
    "language": "البلد واللغة",
    "aboutUs": "معلومات عنا",
    "contactUs": "اتصل بنا",
    "changePassword": "غير كلمة السر"
  },
  "home": {
    "home": "الرئيسية",
    "category": "الفئة",
    "favorite": "المفضلة",
    "settings": "الاعدادات",
    "cart": "السلة"
  },
  "resetPassword": {
    "title": "إعادة تعيين كلمة المرور",
    "instructions": "يجب أن تكون كلمة مرورك الجديدة مختلفة عن كلمة المرور المستخدمة سابقًا.",
    "newPassword": "كلمة مرور جديدة",
    "confirmNewPassword": "تأكيد كلمة المرور الجديدة"
  },
  "editProfile": {
    "update": "تعديل"
  }
};
static const Map<String,dynamic> en = {
  "login": {
    "email": "Email",
    "password": "Password",
    "passwordHint": "At least 6 characters",
    "forgotPassword": "   Forgot Password ?",
    "login": "Login",
    "haveAccount": "   Don't have an account ?",
    "register": "Register"
  },
  "register": {
    "yourName": "Your Name",
    "alreadyHaveAccount": "Already have an account ?",
    "reenterPassword": "Re-enter password",
    "continue": "By continuing, you agree to Amazon's",
    "conditions": "Conditions of use",
    "and": "and",
    "privacy": " Privacy Notice",
    "phoneNumber": "Phone Number",
    "confirmPassword": "Confirm Password",
    "confirmPasswordHint": "Re-Enter Password"
  },
  "forgotPassword": {
    "title": "Forgot Password",
    "resetPassword": "Reset your password",
    "confirmEmail": "enter the email associated with your account."
  },
  "pinCode": {
    "title": "Email Verification",
    "enterCode": "Enter the code sent to ",
    "didntRecieveCode": "\"Didn't receive the code? \"",
    "resend": "RESEND",
    "verify": "VERIFY"
  },
  "settings": {
    "title": "Settings",
    "account": "Edit Profile",
    "notifications": "notifications",
    "language": "Country & language",
    "aboutUs": "About Us",
    "contactUs": "Contact Us",
    "changePassword": "Change Password"
  },
  "home": {
    "home": "Home",
    "category": "Category",
    "favorite": "Favorite",
    "settings": "Settings",
    "cart": "Cart"
  },
  "resetPassword": {
    "title": "Reset Password",
    "instructions": "Your new password must be different from the previously used password.",
    "newPassword": "New Password",
    "confirmNewPassword": "Confirm New Password"
  },
  "editProfile": {
    "update": "Update"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
