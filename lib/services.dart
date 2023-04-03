

import 'dart:convert';
import 'dart:developer';

import 'package:practical/model.dart';
import 'package:http/http.dart' as http;
import 'package:practical/tokens.dart';
class Services{
  static String url3 =  "http://134.122.109.152:8088/login";
  static String url =  "http://134.122.109.152:8088/getRepresentativeList/C_00051";
  static String token = "eyJhbGciOiJIUzUxMiJ9.eyJST0xFIjpbeyJhdXRob3JpdHkiOiJST0xFX0NVU1RPTUVSIn1dLCJzdWIiOiJ5YWduZXNoLnJhbmEiLCJ1c2VyTmFtZSI6InlhZ25lc2gucmFuYSIsImV4cCI6MTY4MDUzMTg2NywiaWF0IjoxNjgwNTEzODY3fQ.h-_dA4VAOeRPgtAoDDLRNLVOUtdiC1sgLNx8xyJQmOIdlDQ8BobYpGsZqYrqR_r1jlIcm2ggCxEmfx_6wQKUyQ";



  static Future<Representative> getData()async{

    try{
      var res2 = await http.post(Uri.parse(url3),body: {
        'userName':'Yagnesh.rana',
        'password':'test@123'
      });
      Tokenss t=Tokenss.fromJson(jsonDecode(res2.body));
      print(t.data!.token.toString());
      token=t.data!.token.toString();
      Map<String,String>  header = {
        "Content-Type":"application/json",
        "Authorization":"Bearer $token",
      };

      var res = await http.get(Uri.parse(url),headers: header);
      Representative rep = Representative.fromJson(jsonDecode(res.body));
      return rep;
    }catch(e){
      print(e);
      return Representative();

    }

  }
}