import 'dart:math';
void main() {
  xuLy();
}

//------------------------------------------------------------1
List layDanhSachSoLe(List l){
  var ls = [];
  for(var i in l){
    if(i % 2 != 0){
      ls.add(i);
    }
  }
  return ls;
}
//------------------------------------------------------------2
List layDanhSachSoChan(List l){
  var ls = [];
  for(var i in l){
    if(i % 2 == 0){
      ls.add(i);
    }
  }
  return ls;
}
//------------------------------------------------------------3
String docTenThang(var n){
  if(n > 12){
    return 'Tháng không được lớn hơn 12';
  }
  switch(n){
    case 1: return 'January';
    case 2: return 'February';
    case 3: return 'March';
    case 4: return 'April';
    case 5: return 'May';
    case 6: return 'June';
    case 7: return 'July';
    case 8: return 'August';
    case 9: return 'September';
    case 10: return 'October';
    case 11: return 'November';
    default:return 'December';     
  }
}
//------------------------------------------------------------4
String docSo(String hang, String so){
  if(hang == 'Chuc'){
    hang = 'Muoi ';
  }
  switch(so){
    case '0': return hang == 'Muoi '?'Le ':'';
    case '1': return 'Mot ' + hang;
    case '2': return 'Hai ' + hang;
    case '3': return 'Ba ' + hang;
    case '4': return 'Bon ' + hang;
    case '5': return 'Nam ' + hang;
    case '6': return 'Sau ' + hang;
    case '7': return 'Bay ' + hang;
    case '8': return 'Tam ' + hang;
    default: return 'Chin ' + hang;
  }
  
}
String docSoThanhTiengViet(var n){
  String so = n.toString();
  String chuso='',hang='';
 for(var i = 0; i < 3; i++){
   if(i == 0){
     hang = 'Tram ';
   }else if(i == 1){
     hang = 'Chuc';
   }else{
      hang = '';
   }
   chuso +=  docSo(hang,so.substring(i, i + 1));
 }
  return chuso;
}
//------------------------------------------------------------5
bool kiemTraSoNguyenTo(var n){
  for(var i = 2; i < n; i++){
    if(n % i == 0){
      return false;
    }
  }
  return true;
}
//------------------------------------------------------------6
bool kiemTraSoHoanThien(int n)
{
 int s=0;
 for(int i=1;i<n;i++)
 {
  if(n%i==0) s=s+i;
 }
 if(s!=n) return false;
 return true;
}
List chuyenSoSangList(int a){ //ham nay 7,8 xai chung
  var ls = [];
  while(a>0){
    ls.add(a%10);
    a=a~/10;
  }
  return ls;
}
//------------------------------------------------------------7
int timSoLonNhatTrongList(var ls){
  int kq =ls[0];
  for(var i in ls){
    if(i > kq){
      kq=i;
    }
  }
  return kq;
}
int chuSoLonNhatCuaSo(int a){
  int kq =0;
  var lst = chuyenSoSangList(a);
  kq =timSoLonNhatTrongList(lst);
  return kq;
}
//------------------------------------------------------------8
int timSoNhoNhatTrongList(var ls){
  int kq =ls[0];
  for(var i in ls){
    if(i < kq){
      kq=i;
    }
  }
  return kq;
}
int chuSoNhoNhatCuaSo(int a){
  int kq =0;
  var lst = chuyenSoSangList(a);
  kq =timSoNhoNhatTrongList(lst);
  return kq;
}
//------------------------------------------------------------9
int soDaoNguoc(int a){
  int kq =0;
  String tmp = "";
  var ls = chuyenSoSangList(a);
  for(var i in ls){
    tmp+=i.toString();
  }
  kq = int.parse(tmp);
  return kq;
}
//------------------------------------------------------------10
int soLuongChuSoLonNhat(int a){
  int kq =0;
  var ls = chuyenSoSangList(a);
  int solonnhat = timSoLonNhatTrongList(ls);
  for(var i in ls){
    if(i==solonnhat){
      kq++;
    }
  }
  return kq;
}
//------------------------------------------------------------11
int soLuongChuSoNhoNhat(int a){
  int kq =0;
  var ls = chuyenSoSangList(a);
  int sonhonhat = timSoNhoNhatTrongList(ls);
  for(var i in ls){
    if(i==sonhonhat){
      kq++;
    }
  }
  return kq;
}
//------------------------------------------------------------12
bool kiemTraSoToanLe(var n){
  var ls = chuyenSoSangList(n);
  if(layDanhSachSoLe(ls).length==ls.length){
    return true;
  }
  return false;
}
//------------------------------------------------------------13
bool kiemTraSoToanChan(var n){
   var ls = chuyenSoSangList(n);
  if(layDanhSachSoChan(ls).length==ls.length){
    return true;
  }
  return false;
}
//------------------------------------------------------------14
bool kiemTraSoDoiXung(var n){
  if(soDaoNguoc(n)==n){
    return true;
  }
  return false;
}
//------------------------------------------------------------15
bool kiemTraSoTangDanTuTraiSangPhai(var n){
  var ls = chuyenSoSangList(n);
  int tmp = ls[0];
  for(var i in ls){
     if(i<tmp){
       return false;
     }else{
       tmp =i;
     }
  }
  return true;
}
//------------------------------------------------------------16
bool kiemTraSoGiamDanTuTraiSangPhai(var n){
  var ls = chuyenSoSangList(n);
  int tmp = ls[0];
  for(var i in ls){
     if(i>tmp){
       return false;
     }else{
       tmp =i;
     }
  }
  return true;
}
//------------------------------------------------------------17
int UCLN(int a, int b){
 if (b == 0) return a;
    return UCLN(b, a % b);
}
//------------------------------------------------------------18
int BCNN(int a, int b){
  return (a *b)~/UCLN(a,b);
}
//------------------------------------------------------------19
double giaiPTBacNhat(int a, int b){
  return a/b;
}
//------------------------------------------------------------20
 String giaiPTBacHai(var a, var b, var c){
  var x1,x2;
  int delta;
  if(a == 0) {
      // a== 0 phuong trinh tro thanh phuong trinh bac mot bx + c = 0
      if(b == 0) {
          if (c == 0){
              return "Phương trình vô số nghiệm" ;
          }else{
              return "Phương trình vô nghiệm";
          }
      }else{
          return "Phương trình có nghiệm duy nhất: " + (-c/b).toString();
      }
  }else{
      delta = b*b - 4*a*c;
      if(delta > 0) {
          x1 = (-b+sqrt(delta))/(2*a);
          x2 = (-b-sqrt(delta))/(2*a);
          return "Nghiệm thứ nhất x1 = " + x1.toString() + "\nNghiệm thứ hai x2 = "+ x2.toString() ;
      }else if ( delta == 0) {
          return "Phương trình có nghiệm kép: x1 = x2 = " + (-b/2*a).toString();
      }else{
          return "Phương trình vô nghiệm" ;
      }
  }
 }
//------------------------------------------------------------21
int tinhTongDaySoCoNSo(int n){
  int kq =0;
  for(var i = 0; i<=n;i++){
    kq+= i;
  }
return kq;
}
//------------------------------------------------------------22
int timNDeTongDaySoCoNSoLonHon10000(){
  int tong =0;
  int kq=0;
  for(var i = 0; tong <10000 ;i++){
    tong+= i;
    if(tong>=10000){
      kq=i;
    }
  }
return kq;
}
//------------------------------------------------------------23
bool kiemTraNamNhuan(var n){
  return (((n % 4 == 0) && (n % 100 != 0)) || (n % 400 == 0)); 
}
//------------------------------------------------------------24
String soNgayCuaThang(var thang, var nam){
  if(thang > 12){
    return 'Tháng không được lớn hơn 12';
  }
  switch(thang){
    case 1: 
    case 3:
    case 5: 
    case 7: 
    case 8: 
    case 10:
    case 12: return '31';
    case 2: return kiemTraNamNhuan(nam)?'29':'28';
    default:return '30';     
  }
}
//------------------------------------------------------------25
String timNgayKeTiep(var ngay, var thang, var nam){
  var songaycuathang = int.parse(soNgayCuaThang(thang,nam));
  if(thang > 12){
    return 'Tháng không được lớn hơn 12';
  }
  if(ngay > songaycuathang ){
     return 'Ngày của bạn nhập đã lớn hơn số ngày trong tháng này';
  }else{
     if(ngay==songaycuathang){
       if(thang==12){
         nam++;
         thang =1;
         ngay=1;
       }else{
       thang++;
       ngay = 1;
       }
     }else{
       ngay++;
     }
  }
  return 'Ngày kế tiếp = $ngay/$thang/$nam';
}
//------------------------------------------------------------26
String timNgayTruoc(var ngay, var thang, var nam){
  var songaycuathang = int.parse(soNgayCuaThang(thang,nam));
  if(thang > 12){
    return 'Tháng không được lớn hơn 12';
  }
  if(ngay > songaycuathang ){
     return 'Ngày của bạn nhập đã lớn hơn số ngày trong tháng này';
  }else{
     if(ngay==1){
       if(thang==1){
          ngay =31;
          nam--;
          thang = 12;
       }else{
       thang--;
       ngay = soNgayCuaThang(thang, nam);
       }
     }else{
       ngay--;
     }
  }
  return 'Ngày trước = $ngay/$thang/$nam';
}
//------------------------------------------------------------27
String tinhNgayLaNgayThuBaoNhieuTrongNam(int ngay, int thang, int nam){
  int kq = 0;
  var songaycuathang;
  if(thang<=12){
     songaycuathang = int.parse(soNgayCuaThang(thang,nam));
  }else{
    return 'Tháng không được lớn hơn 12';
  }
  if(ngay > songaycuathang ){
     return 'Ngày của bạn nhập đã lớn hơn số ngày trong tháng này. Số ngày tháng này = $songaycuathang';
  }else{
     for(var i = 1; i<=thang;i++){
       if(i==thang){
        kq += ngay;
       }else{
         kq+= int.parse(soNgayCuaThang(i, nam));
       }
     }
  }
  return kq.toString();
}
//------------------------------------------------------------28
bool kiemTraPhanTuTangDanTrongDanhSach(var l){
  int tmp = l[0];
  for(var i in l){
     if(i<tmp){
       return false;
     }else{
       tmp =i;
     }
  }
  return true;
}
//------------------------------------------------------------29
bool kiemTraPhanTuGiamDanTrongDanhSach(var l){
  int tmp = l[0];
  for(var i in l){
     if(i>tmp){
       return false;
     }else{
       tmp =i;
     }
  }
  return true;
}
//------------------------------------------------------------30
bool kiemTraPhanTuTrongDanhSachCoBangNhauHayKhong(var l){
  int tmp = l[0];
  for(var i in l){
     if(i!=tmp){
       return false;
     }
  }
  return true;
}
void xuLy(){
  var ls = [1,2,3];
  //Câu 1
  print("1. Lấy danh sách các số lẻ trong một danh sách các số nguyên.");
  print(layDanhSachSoLe(ls));
  //Câu 2
  print("2. Lấy danh sách các số chẵn trong một danh sách các số nguyên.");
  print(layDanhSachSoChan(ls));
  //Câu 3
  print("3. Đọc tên của tháng N trong năm.");
  print(docTenThang(1));
  //Câu 4
  print("4. Đọc số N có 3 chữ số thành Tiếng việt không dấu.");
  print(docSoThanhTiengViet(403));
  //Câu 5
  print("5. Kiểm tra số nguyên N có phải là số nguyên tố không?");
  kiemTraSoNguyenTo(8)?print('Day la so nguyen to'):print('Day khong phai la so nguyen to');
  //Câu 6
  print("6. Kiểm tra số nguyên N có phải là số hoàn thiện không?");
  kiemTraSoHoanThien(6)?print('Day la so hoan thien'):print('Day khong phai la so hoan thien');
  //Câu 7
  print("7. Tìm chữ số lớn nhất của số nguyên dương N.");
  print(chuSoLonNhatCuaSo(40399));
  //Câu 8
  print("8. Tìm chữ số nhỏ nhất của số nguyên dương N.");
  print(chuSoNhoNhatCuaSo(439));
  //Câu 9
  print("9. Tìm số đảo ngược của số nguyên dương N.");
  print(soLuongChuSoLonNhat(434));
  //Câu 10
  print("10. Hãy đếm số lượng chữ số lớn nhất của số nguyên dương N.");
  print(soLuongChuSoNhoNhat(400));
  //Câu 11
  print("11. Hãy đếm số lượng chữ số nhỏ nhất của số nguyên dương N.");
  print(soDaoNguoc(200));
  //Câu 12
  print("12. Hãy kiểm tra số nguyên dương N có toàn chữ số lẻ hay không?");
  print(kiemTraSoToanLe(111));
  //Câu 13
  print("13. Hãy kiểm tra số nguyên dương N có toàn chữ số chẵn hay không?");
  print(kiemTraSoToanChan(201));
  //Câu 14
  print("14. Hãy kiểm tra số nguyên dương N có phải là số đối xứng hay không?");
  print(kiemTraSoDoiXung(12321));
  //Câu 15
  print("15. Hãy kiểm tra các chữ số của số nguyên dương N có tăng dần từ trái sang phải hay không?");
  print(kiemTraSoTangDanTuTraiSangPhai(1123));
  //Câu 16
  print("16. Hãy kiểm tra các chữ số của số nguyên dương N có giảm dần từ trái sang phải hay không?");
  print(kiemTraSoGiamDanTuTraiSangPhai(3211));
  //Câu 17
  print("17. Cho 2 số nguyên dương a và b. Hãy tìm ước chung lớn nhất của 2 số này.");
  print(UCLN(11,7));
  //Câu 18
  print("18. Cho 2 số nguyên dương a và b. Hãy tìm bội chung nhỏ nhất của 2 số này.");
  print(BCNN(2,4));
  //Câu 19
  print("19. Giải phương trình bậc nhất: ax + b = 0");
  print(giaiPTBacNhat(2,4));
  //Câu 20
  print("20. Giải phương trình bậc hai: ax2 + bx + c = 0");
   print(giaiPTBacHai(1,-4,4));
  //Câu 21
  print("21. Tính tổng của dãy số sau: S(N) = 1 + 2 + 3 + ... + N");
  print(tinhTongDaySoCoNSo(141));
  //Câu 22
  print("22. Tìm số nguyên dương N nhỏ nhất sao cho 1 + 2 + ... + N > 10000");
  print(timNDeTongDaySoCoNSoLonHon10000());
  //Câu 23
  print("23. Kiểm tra năm N có phải là năm nhuận hay không?");
  print(kiemTraNamNhuan(2000));
  //Câu 24
  print("24. Hãy cho biết tháng N có bao nhiêu ngày?");
  print(soNgayCuaThang(1,2000));
  //Câu 25
  print("25. Tìm ngày kế của ngày D tháng M năm Y.");
  print(timNgayKeTiep(28,2,2001));
  //Câu 26
  print("26. Tìm ngày trước của ngày D tháng M năm Y.");
  print(timNgayTruoc(1,3,2001));
  //Câu 27
  print("27. Tính xem ngày D tháng M năm Y là ngày thứ bao nhiêu trong năm?");
  print(tinhNgayLaNgayThuBaoNhieuTrongNam(112,2,2001));
  //Câu 28
  print("28. Kiểm tra các phần tử trong danh sách số nguyên có tăng dần hay không?");
  print(kiemTraPhanTuTangDanTrongDanhSach([4,4,4,4]));
  //Câu 29
  print("29. Kiểm tra các phần tử trong danh sách số nguyên có giảm dần hay không?");
  print(kiemTraPhanTuGiamDanTrongDanhSach([4,4,4,4]));
  //Câu 30
  print("30. Hãy cho biết các phần tử trong danh sách số nguyên có bằng nhau không?");
  print(kiemTraPhanTuTrongDanhSachCoBangNhauHayKhong([4,1,4,4]));
}