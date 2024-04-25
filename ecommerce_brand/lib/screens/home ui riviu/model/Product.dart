
class ProductModel {
  String? proPaternCode;
  int? proPaternId;
  int? id;
  String? proTplCode;
  String? status;
  String? createdAt;
  String? createdBy;
  String? updatedAt;
  String? updatedBy;
  String? productCode;
  String? productName;
  String? branch;
  String? lineSap;
  String? proType;
  int? price;
  int? costPrice;
  String? xman;
  String? imageDefault;
  String? pofStatus;
  String? label;
  String? basicProduct;
  String? basicProductOld;
  String? productTypeCode;
  String? productTypeName;
  String? prodGrp;
  String? prodGrpName;
  String? prodGrp1;
  String? prodGrp1Name;
  String? prodGrp2;
  String? prodGrp2Name;
  String? prodGrp3;
  String? prodGrp3Name;
  String? prodGrp4;
  String? prodGrp4Name;
  String? prodGrp5;
  String? prodGrp5Name;
  String? prodGrp6;
  String? prodGrp6Name;
  String? prodGrp7;
  String? prodGrp7Name;
  String? color;
  String? itemSize;
  String? sourceOfSupply;
  String? baseUomCode;
  int? purityOfGold;
  String? productKind;
  String? size;
  String? xplantStatus;
  int? createdOnDt;
  String? bst;
  String? bstText;
  String? chungloai;
  String? chungloaiText;
  String? dachinh;
  String? dachinhText;
  String? mausac;
  String? mausacText;
  String? chatlieu;
  String? chatlieuText;
  String? mauxi;
  String? mauxiText;
  String? tlchuan;
  String? dungsaitren;
  String? dungsaiduoi;
  String? daphu;
  String? daphuText;
  String? cnsx;
  String? cnsxText;
  String? capchatluong;
  String? capchatluongText;
  String? gioitinh;
  String? gioitinhText;
  String? phankhucKh;
  String? phankhucKhText;
  String? ohotKc;
  String? ohotKcText;
  String? zmaBo;
  String? zmaBoText;
  String? zmaTsCap;
  String? zmaTsCapText;
  String? bomInfo;
  int? tongslTon;
  num? tongGiatri;
  num? doanhthu6th;
  num? doanhthuTb1th;
  String? loaiDa;
  String? nhomDa;
  String? basicStatus;
  String? phankhucGia;
  String? aging;

  ProductModel({
    this.proPaternCode,
    this.proPaternId,
    this.id,
    this.proTplCode,
    this.status,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    this.productCode,
    this.productName,
    this.branch,
    this.lineSap,
    this.proType,
    this.price,
    this.costPrice,
    this.xman,
    this.imageDefault,
    this.pofStatus,
    this.label,
    this.basicProduct,
    this.basicProductOld,
    this.productTypeCode,
    this.productTypeName,
    this.prodGrp,
    this.prodGrpName,
    this.prodGrp1,
    this.prodGrp1Name,
    this.prodGrp2,
    this.prodGrp2Name,
    this.prodGrp3,
    this.prodGrp3Name,
    this.prodGrp4,
    this.prodGrp4Name,
    this.prodGrp5,
    this.prodGrp5Name,
    this.prodGrp6,
    this.prodGrp6Name,
    this.prodGrp7,
    this.prodGrp7Name,
    this.color,
    this.itemSize,
    this.sourceOfSupply,
    this.baseUomCode,
    this.purityOfGold,
    this.productKind,
    this.size,
    this.xplantStatus,
    this.createdOnDt,
    this.bst,
    this.bstText,
    this.chungloai,
    this.chungloaiText,
    this.dachinh,
    this.dachinhText,
    this.mausac,
    this.mausacText,
    this.chatlieu,
    this.chatlieuText,
    this.mauxi,
    this.mauxiText,
    this.tlchuan,
    this.dungsaitren,
    this.dungsaiduoi,
    this.daphu,
    this.daphuText,
    this.cnsx,
    this.cnsxText,
    this.capchatluong,
    this.capchatluongText,
    this.gioitinh,
    this.gioitinhText,
    this.phankhucKh,
    this.phankhucKhText,
    this.ohotKc,
    this.ohotKcText,
    this.zmaBo,
    this.zmaBoText,
    this.zmaTsCap,
    this.zmaTsCapText,
    this.bomInfo,
    this.tongslTon,
    this.tongGiatri,
    this.doanhthu6th,
    this.doanhthuTb1th,
    this.loaiDa,
    this.nhomDa,
    this.basicStatus,
    this.phankhucGia,
    this.aging,
  });

  ProductModel.fromJson1(Map<String, dynamic> json) {
    // parse Json đầy  đủ
    proPaternCode = json['pro_patern_code'];
    proPaternId = json['pro_patern_id'];
    id = json['id'];
    proTplCode = json['pro_tpl_code'];
    status = json['status'];
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
    productCode = json['product_code'];
    productName = json['product_name'];
    branch = json['branch'];
    lineSap = json['line_sap'];
    proType = json['pro_type'];
    price = json['price'];
    costPrice = json['cost_price'];
    xman = json['xman'];
    imageDefault = json['image_default'];
    pofStatus = json['pof_status'];
    label = json['label'];
    basicProduct = json['basic_product'];
    basicProductOld = json['basic_product_old'];
    productTypeCode = json['product_type_code'];
    productTypeName = json['product_type_name'];
    prodGrp = json['prod_grp'];
    prodGrpName = json['prod_grp_name'];
    prodGrp1 = json['prod_grp1'];
    prodGrp1Name = json['prod_grp1_name'];
    prodGrp2 = json['prod_grp2'];
    prodGrp2Name = json['prod_grp2_name'];
    prodGrp3 = json['prod_grp3'];
    prodGrp3Name = json['prod_grp3_name'];
    prodGrp4 = json['prod_grp4'];
    prodGrp4Name = json['prod_grp4_name'];
    prodGrp5 = json['prod_grp5'];
    prodGrp5Name = json['prod_grp5_name'];
    prodGrp6 = json['prod_grp6'];
    prodGrp6Name = json['prod_grp6_name'];
    prodGrp7 = json['prod_grp7'];
    prodGrp7Name = json['prod_grp7_name'];
    color = json['color'];
    itemSize = json['item_size'];
    sourceOfSupply = json['source_of_supply'];
    baseUomCode = json['base_uom_code'];
    purityOfGold = json['purity_of_gold'];
    productKind = json['product_kind'];
    size = json['size'];
    xplantStatus = json['xplant_status'];
    createdOnDt = json['created_on_dt'];
    bst = json['bst'];
    bstText = json['bst_text'];
    chungloai = json['chungloai'];
    chungloaiText = json['chungloai_text'];
    dachinh = json['dachinh'];
    dachinhText = json['dachinh_text'];
    mausac = json['mausac'];
    mausacText = json['mausac_text'];
    chatlieu = json['chatlieu'];
    chatlieuText = json['chatlieu_text'];
    mauxi = json['mauxi'];
    mauxiText = json['mauxi_text'];
    tlchuan = json['tlchuan'];
    dungsaitren = json['dungsaitren'];
    dungsaiduoi = json['dungsaiduoi'];
    daphu = json['daphu'];
    daphuText = json['daphu_text'];
    cnsx = json['cnsx'];
    cnsxText = json['cnsx_text'];
    capchatluong = json['capchatluong'];
    capchatluongText = json['capchatluong_text'];
    gioitinh = json['gioitinh'];
    gioitinhText = json['gioitinh_text'];
    phankhucKh = json['phankhuc_kh'];
    phankhucKhText = json['phankhuc_kh_text'];
    ohotKc = json['ohot_kc'];
    ohotKcText = json['ohot_kc_text'];
    zmaBo = json['zma_bo'];
    zmaBoText = json['zma_bo_text'];
    zmaTsCap = json['zma_ts_cap'];
    zmaTsCapText = json['zma_ts_cap_text'];
    bomInfo = json['bom_info'];
    tongslTon = json['tongsl_ton'];
    tongGiatri = json['tong_giatri'];
    doanhthu6th = json['doanhthu_6th'];
    doanhthuTb1th = json['doanhthu_tb_1th'];
    loaiDa = json['loai_da'];
    nhomDa = json['nhom_da'];
    basicStatus = json['basic_status'];
    phankhucGia = json['phankhuc_gia'];
    aging = json['aging'];
  }

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productCode = json['product_code'];
    productName = json['product_name'];
    price = json['price'];
    costPrice = json['cost_price'];
    imageDefault = json['image_default'];
    productTypeName = json['product_type_name'];
    prodGrp5Name = json['prod_grp5_name'];
    gioitinhText = json['gioitinh_text'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_code'] = this.productCode;
    data['product_name'] = this.productName;
    data['price'] = this.price;
    data['cost_price'] = this.costPrice;
    data['basic_product'] = this.basicProduct;
    data['basic_product_old'] = this.basicProductOld;
    data['product_type_code'] = this.productTypeCode;
    data['product_type_name'] = this.productTypeName;
    data['prod_grp'] = this.prodGrp;
    data['prod_grp_name'] = this.prodGrpName;
    data['prod_grp1'] = this.prodGrp1;
    data['prod_grp1_name'] = this.prodGrp1Name;
    data['prod_grp2'] = this.prodGrp2;
    data['prod_grp2_name'] = this.prodGrp2Name;
    data['prod_grp3'] = this.prodGrp3;
    data['prod_grp3_name'] = this.prodGrp3Name;
    data['prod_grp4'] = this.prodGrp4;
    data['prod_grp4_name'] = this.prodGrp4Name;
    data['prod_grp5'] = this.prodGrp5;
    data['prod_grp5_name'] = this.prodGrp5Name;
    data['prod_grp6'] = this.prodGrp6;
    data['prod_grp6_name'] = this.prodGrp6Name;
    data['prod_grp7'] = this.prodGrp7;
    data['prod_grp7_name'] = this.prodGrp7Name;
    data['color'] = this.color;
    data['item_size'] = this.itemSize;
    data['source_of_supply'] = this.sourceOfSupply;
    data['base_uom_code'] = this.baseUomCode;
    data['purity_of_gold'] = this.purityOfGold;
    data['product_kind'] = this.productKind;
    data['size'] = this.size;
    data['xplant_status'] = this.xplantStatus;
    data['created_on_dt'] = this.createdOnDt;
    data['bst'] = this.bst;
    data['bst_text'] = this.bstText;
    data['chungloai'] = this.chungloai;
    data['chungloai_text'] = this.chungloaiText;
    data['dachinh'] = this.dachinh;
    data['dachinh_text'] = this.dachinhText;
    data['mausac'] = this.mausac;
    data['mausac_text'] = this.mausacText;
    data['chatlieu'] = this.chatlieu;
    data['chatlieu_text'] = this.chatlieuText;
    data['mauxi'] = this.mauxi;
    data['mauxi_text'] = this.mauxiText;
    data['tlchuan'] = this.tlchuan;
    data['dungsaitren'] = this.dungsaitren;
    data['dungsaiduoi'] = this.dungsaiduoi;
    data['daphu'] = this.daphu;
    data['daphu_text'] = this.daphuText;
    data['cnsx'] = this.cnsx;
    data['cnsx_text'] = this.cnsxText;
    data['capchatluong'] = this.capchatluong;
    data['capchatluong_text'] = this.capchatluongText;
    data['gioitinh'] = this.gioitinh;
    data['gioitinh_text'] = this.gioitinhText;
    data['phankhuc_kh'] = this.phankhucKh;
    data['phankhuc_kh_text'] = this.phankhucKhText;
    data['ohot_kc'] = this.ohotKc;
    data['ohot_kc_text'] = this.ohotKcText;
    data['zma_bo'] = this.zmaBo;
    data['zma_bo_text'] = this.zmaBoText;
    data['zma_ts_cap'] = this.zmaTsCap;
    data['zma_ts_cap_text'] = this.zmaTsCapText;
    data['bom_info'] = this.bomInfo;
    data['tongsl_ton'] = this.tongslTon;
    data['tong_giatri'] = this.tongGiatri;
    data['doanhthu_6th'] = this.doanhthu6th;
    data['doanhthu_tb_1th'] = this.doanhthuTb1th;
    data['loai_da'] = this.loaiDa;
    data['nhom_da'] = this.nhomDa;
    data['basic_status'] = this.basicStatus;
    data['phankhuc_gia'] = this.phankhucGia;
    data['aging'] = this.aging;
    return data;
  }

  Map<String, dynamic> toJson2() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pro_patern_code'] = this.proPaternCode;
    data['pro_patern_id'] = this.proPaternId;
    data['id'] = this.id;
    data['pro_tpl_code'] = this.proTplCode;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['created_by'] = this.createdBy;
    data['updated_at'] = this.updatedAt;
    data['updated_by'] = this.updatedBy;
    data['product_code'] = this.productCode;
    data['product_name'] = this.productName;
    data['branch'] = this.branch;
    data['line_sap'] = this.lineSap;
    data['pro_type'] = this.proType;
    data['price'] = this.price;
    data['cost_price'] = this.costPrice;
    data['xman'] = this.xman;
    data['image_default'] = this.imageDefault;
    data['pof_status'] = this.pofStatus;
    data['label'] = this.label;
    data['basic_product'] = this.basicProduct;
    data['basic_product_old'] = this.basicProductOld;
    data['product_type_code'] = this.productTypeCode;
    data['product_type_name'] = this.productTypeName;
    data['prod_grp'] = this.prodGrp;
    data['prod_grp_name'] = this.prodGrpName;
    data['prod_grp1'] = this.prodGrp1;
    data['prod_grp1_name'] = this.prodGrp1Name;
    data['prod_grp2'] = this.prodGrp2;
    data['prod_grp2_name'] = this.prodGrp2Name;
    data['prod_grp3'] = this.prodGrp3;
    data['prod_grp3_name'] = this.prodGrp3Name;
    data['prod_grp4'] = this.prodGrp4;
    data['prod_grp4_name'] = this.prodGrp4Name;
    data['prod_grp5'] = this.prodGrp5;
    data['prod_grp5_name'] = this.prodGrp5Name;
    data['prod_grp6'] = this.prodGrp6;
    data['prod_grp6_name'] = this.prodGrp6Name;
    data['prod_grp7'] = this.prodGrp7;
    data['prod_grp7_name'] = this.prodGrp7Name;
    data['color'] = this.color;
    data['item_size'] = this.itemSize;
    data['source_of_supply'] = this.sourceOfSupply;
    data['base_uom_code'] = this.baseUomCode;
    data['purity_of_gold'] = this.purityOfGold;
    data['product_kind'] = this.productKind;
    data['size'] = this.size;
    data['xplant_status'] = this.xplantStatus;
    data['created_on_dt'] = this.createdOnDt;
    data['bst'] = this.bst;
    data['bst_text'] = this.bstText;
    data['chungloai'] = this.chungloai;
    data['chungloai_text'] = this.chungloaiText;
    data['dachinh'] = this.dachinh;
    data['dachinh_text'] = this.dachinhText;
    data['mausac'] = this.mausac;
    data['mausac_text'] = this.mausacText;
    data['chatlieu'] = this.chatlieu;
    data['chatlieu_text'] = this.chatlieuText;
    data['mauxi'] = this.mauxi;
    data['mauxi_text'] = this.mauxiText;
    data['tlchuan'] = this.tlchuan;
    data['dungsaitren'] = this.dungsaitren;
    data['dungsaiduoi'] = this.dungsaiduoi;
    data['daphu'] = this.daphu;
    data['daphu_text'] = this.daphuText;
    data['cnsx'] = this.cnsx;
    data['cnsx_text'] = this.cnsxText;
    data['capchatluong'] = this.capchatluong;
    data['capchatluong_text'] = this.capchatluongText;
    data['gioitinh'] = this.gioitinh;
    data['gioitinh_text'] = this.gioitinhText;
    data['phankhuc_kh'] = this.phankhucKh;
    data['phankhuc_kh_text'] = this.phankhucKhText;
    data['ohot_kc'] = this.ohotKc;
    data['ohot_kc_text'] = this.ohotKcText;
    data['zma_bo'] = this.zmaBo;
    data['zma_bo_text'] = this.zmaBoText;
    data['zma_ts_cap'] = this.zmaTsCap;
    data['zma_ts_cap_text'] = this.zmaTsCapText;
    data['bom_info'] = this.bomInfo;
    data['tongsl_ton'] = this.tongslTon;
    data['tong_giatri'] = this.tongGiatri;
    data['doanhthu_6th'] = this.doanhthu6th;
    data['doanhthu_tb_1th'] = this.doanhthuTb1th;
    data['loai_da'] = this.loaiDa;
    data['nhom_da'] = this.nhomDa;
    data['basic_status'] = this.basicStatus;
    data['phankhuc_gia'] = this.phankhucGia;
    data['aging'] = this.aging;
    return data;
  }

  static List<ProductModel> toList(List<dynamic> items) {
    return items.map((item) => ProductModel.fromJson(item)).toList();
  }

  @override
  String toString() {
    return "Mã: ${this.productCode} + Tên Sản phẩm: ${this.productName} + Giá tiền: ${this.costPrice} + Loại: ${this.chungloaiText}/n";
  }
}

class ImageProduct {
  String? imagePath;
  int? index;
  int? id;
  bool? active;
  String? createdAt;
  String? updatedAt;
  String? createdBy;
  String? updatedBy;

  ImageProduct(
      {this.imagePath,
      this.index,
      this.id,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy});

  ImageProduct.fromJson(Map<String, dynamic> json) {
    imagePath = json['image_path'];
    index = json['index'];
    id = json['id'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_path'] = this.imagePath;
    data['index'] = this.index;
    data['id'] = this.id;
    data['active'] = this.active;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    return data;
  }

  static List<ImageProduct> toList(List<dynamic> items) {
    return items.map((item) => ImageProduct.fromJson(item)).toList();
  }
}

class ProductShoppingCartModel {
  String? pofCode;
  String? maMau;
  String? proCode;
  String? doanhthu6th;
  int? tongslTon;
  int? tongGiatri;
  String? niSanpham;
  String? cartCode;
  int? cartRegisterDetailId;
  String? imageDefault;
  String? tenMau;
  String? dongHang;
  String? nganhHang;
  String? nhanHang;
  String? chungLoai;
  String? xman;
  String? zmaBo;
  String? zmaTsCap;
  String? chungloai;
  String? gioitinh;
  String? bst;
  int? price;
  int? costPrice;
  int? lineSap;
  String? zmaBoText;
  String? zmaTsCapText;
  String? color;
  String? lineXman;
  String? kldg3tc;
  String? prodGrp2;
  String? prodGrp3;
  String? prodGrp7;
  String? nhomDa;
  String? loaiDa;
  String? plhh;
  String? lineXmanText;
  String? materialType;
  int? aging;
  int? oldOrderMin;
  int? oldOrderMax;

  ProductShoppingCartModel(
      {this.pofCode,
      this.maMau,
      this.proCode,
      this.doanhthu6th,
      this.tongslTon,
      this.tongGiatri,
      this.niSanpham,
      this.cartCode,
      this.cartRegisterDetailId,
      this.imageDefault,
      this.tenMau,
      this.dongHang,
      this.nganhHang,
      this.nhanHang,
      this.chungLoai,
      this.xman,
      this.zmaBo,
      this.zmaTsCap,
      this.chungloai,
      this.gioitinh,
      this.bst,
      this.price,
      this.costPrice,
      // this.lineSap,
      this.zmaBoText,
      this.zmaTsCapText,
      this.color,
      this.lineXman,
      this.kldg3tc,
      this.prodGrp2,
      this.prodGrp3,
      this.prodGrp7,
      this.nhomDa,
      this.loaiDa,
      this.oldOrderMin,
      this.oldOrderMax});

  ProductShoppingCartModel.fromJson(Map<String, dynamic> json) {
    pofCode = json['pof_code'];
    maMau = json['ma_mau'];
    proCode = json['pro_code'];
    doanhthu6th = json['doanhthu_6th'];
    tongslTon = json['tongsl_ton'];
    tongGiatri = json['tong_giatri'];
    niSanpham = json['ni_sanpham'];
    cartCode = json['cart_code'];
    cartRegisterDetailId = json['cart_register_detail_id'];
    imageDefault = json['image_default'];
    tenMau = json['ten_mau'];
    dongHang = json['dong_hang'];
    nganhHang = json['nganh_hang'];
    nhanHang = json['nhan_hang'];
    chungLoai = json['chung_loai'];
    xman = json['xman'];
    zmaBo = json['zma_bo'];
    zmaTsCap = json['zma_ts_cap'];
    chungloai = json['chungloai'];
    gioitinh = json['gioitinh'];
    bst = json['bst'];
    price = json['price'];
    costPrice = json['cost_price'];
    // lineSap = json['line_sap'];
    zmaBoText = json['zma_bo_text'];
    zmaTsCapText = json['zma_ts_cap_text'];
    color = json['color'];
    lineXman = json['line_xman'];
    kldg3tc = json['kldg_3tc'];
    prodGrp2 = json['prod_grp2'];
    prodGrp3 = json['prod_grp3'];
    prodGrp7 = json['prod_grp7'];
    nhomDa = json['nhom_da'];
    loaiDa = json['loai_da'];
    oldOrderMin = json['old_order_min'];
    oldOrderMax = json['old_order_max'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pof_code'] = this.pofCode;
    data['ma_mau'] = this.maMau;
    data['pro_code'] = this.proCode;
    data['doanhthu_6th'] = this.doanhthu6th;
    data['tongsl_ton'] = this.tongslTon;
    data['tong_giatri'] = this.tongGiatri;
    data['ni_sanpham'] = this.niSanpham;
    data['cart_code'] = this.cartCode;
    data['cart_register_detail_id'] = this.cartRegisterDetailId;
    data['image_default'] = this.imageDefault;
    data['ten_mau'] = this.tenMau;
    data['dong_hang'] = this.dongHang;
    data['nganh_hang'] = this.nganhHang;
    data['nhan_hang'] = this.nhanHang;
    data['chung_loai'] = this.chungLoai;
    data['xman'] = this.xman;
    data['zma_bo'] = this.zmaBo;
    data['zma_ts_cap'] = this.zmaTsCap;
    data['chungloai'] = this.chungloai;
    data['gioitinh'] = this.gioitinh;
    data['bst'] = this.bst;
    data['price'] = this.price;
    data['cost_price'] = this.costPrice;
    // data['line_sap'] = this.lineSap;
    data['zma_bo_text'] = this.zmaBoText;
    data['zma_ts_cap_text'] = this.zmaTsCapText;
    data['color'] = this.color;
    data['line_xman'] = this.lineXman;
    data['kldg_3tc'] = this.kldg3tc;
    data['prod_grp2'] = this.prodGrp2;
    data['prod_grp3'] = this.prodGrp3;
    data['prod_grp7'] = this.prodGrp7;
    data['nhom_da'] = this.nhomDa;
    data['loai_da'] = this.loaiDa;
    data['old_order_min'] = this.oldOrderMin;
    data['old_order_max'] = this.oldOrderMax;
    return data;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "name: $tenMau";
  }

  static List<ProductShoppingCartModel> toList(List<dynamic> items) {
    return items
        .map((item) => ProductShoppingCartModel.fromJson(item))
        .toList();
  }
}

class DataProductShoppingCartModel {
  List<ProductShoppingCartModel> products;
  int total;
  DataProductShoppingCartModel({required this.products, required this.total});
}
