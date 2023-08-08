library global;

String userid='',
    username = '',
    useremail = '',
    userRFC='',
    usertelephone='',
    useraddressstreet='',
    useraddressnumber='',
    useraddresscol='',
    useraddresscity='',
    useraddressedo='',
    usercarnumber='',
    usercustomerid='',
    usertype='',
    userprofileid='',
    pagoid = '',
    register = '';

String textSearch = '';

String SK_STRIPE='',PK_STRIPE='',STRIPE_MERCHANTID='',STRIPE_ANDROIDPAYMODE = '';

class user {

  String userMail;
  String userPass;
  String userName;
  String userLastName;
  String userPhoneNumber;

  user({
    required this.userMail,
    required this.userPass,
    required this.userName,
    required this.userLastName,
    required this.userPhoneNumber,
  });

}

class infoUser{

  String uuidUser;
  String mailUser;
  String passUser;

  infoUser({
    required this.uuidUser,
    required this.mailUser,
    required this.passUser,
  });

}

class infoPayment{
  String methodId;
  String intentId;
  String currency;
  String amount;
  String description;

  infoPayment({
    required this.methodId,
    required this.intentId,
    required this.currency,
    required this.amount,
    required this.description
  });
}

class keyConf {
  String SK_STRIPE_GLOBAL;
  String PK_STRIPE;
  String STRIPE_MERCHANTID;
  String STRIPE_ANDROIDPAYMODE;

  keyConf({
    required this.PK_STRIPE,
    required this.SK_STRIPE_GLOBAL,
    required this.STRIPE_MERCHANTID,
    required this.STRIPE_ANDROIDPAYMODE,
  });

}