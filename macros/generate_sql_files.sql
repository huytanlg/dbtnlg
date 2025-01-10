{% macro generate_sql_files() %}
    {% set tables = [
        'agent', 'astaff', 'banggiamlaicongno', 'banggiamlaicongno_ls',
        'bdslh', 'bdsSanPham', 'bdstrangthai', 'bgbhBangiao', 
        'bgbhQuatrinhthuchien', 'bgbhThongbao', 'bgtbchitiet', 'bgThongbaoBangiao',
        'bookonline', 'bookonlinestatus', 'bqtbangquyettoan', 'bqtchitiet',
        'bqtlqtoan', 'chucvu', 'cnchuyennhuong', 'cnguoidungten', 
        'cntthongtinkhac', 'cntrangthai', 'cqhoso', 'cqkhachhang', 'cql', 
        'cqlhs', 'cqtbchitiet', 'csloai', 'daanhan', 'daily', 
        'dakhuyenmai', 'dakhuyenmails', 'dalichthanhtoan', 'daloaibieumau', 
        'datruonghopthanhtoan', 'duan', 'hdgvquatrinhthuchien', 'hdmbbieumau',
        'hdmbphuluc', 'hdmbquatrinhthuchien', 'hdmbtinhtrang', 'hdptthongtinkhac',
        'hopdongmuaban', 'huyen', 'khachhang', 'khnnganhangchinhanh', 'khnnganhanggoivay',
        'khu', 'loaibds', 'loaida', 'loaiduong', 'loaigd', 'loaikhkd', 'loaithuien', 
        'loaichinhsach', 'lttrangthai', 'ltppromotionbyblock', 'mapping_houseunitstatus',
        'mapping_material_group1', 'mapping_material_group2', 'mapping_material_group3',
        'mglgdbieumau', 'nganhang', 'nghenghiep', 'nhanvien', 'nhchinhnhanh', 'nhchuongtrinhvay',
        'nhctlaisuat', 'nhomkh', 'nl_npthulaitphat', 'nl_npthulaitphat_v2', 'nngiahan',
        'npsals01312_all_bycanho', 'pdcphieudatcoc', 'pdcquatrinhthuchien',
        'pdctinhtrang', 'pdkgdquatrinhthuchien', 'pdmphieudatmua', 'pdmquatrinhthuchien',
        'pdmtinhtrang', 'pdxcphieudexuathoc', 'pdxcquatrinhthuchien', 'pdxctinhtrang',
        'pgcbangtinhlaimuon', 'pgcbieumau', 'pgcbmthongtinkhac', 'pgcchinhsach', 'pgckhachhang',
        'pgclichthanhtoan', 'pgcloai', 'pgcnhacno', 'pgcphieugiucho', 'pgcphieuthu',
        'pgcpromotion', 'pgcquatrinhthuchien', 'pgctinhtrang', 'pgctopupprogram', 'phanKhu',
        'phongban', 'phuonghuong', 'phuongthucthanhtoan', 'quocgia', 'quydanh',
        'refphieuthuinvalid', 'refphieuthuinvalid_history', 'sals01388zz_lephi_view',
        'sals01388zz_lephi_view_v2', 'sals01388hoaDon_view', 'ssr_cash_trxs', 'ssr_cash_trxs_forimport',
        'ssr_cash_trxsv2', 'thoidiemlienhe', 'tinh', 'tlbhquatrinhthuchien', 'tlbhtinhtrang',
        'topupprogram', 'vaynnganhang', 'vitri', 'vnhgiaingan', 'vnhquatrinhthuchien', 'vnhtrangthai',
        'vvbhtrangthai', 'xa'
    ] %}

    {% for table in tables %}
        -- Tạo job cho bảng {{ table }}
        {{ create_model('ls_' ~ table, 'select * from ' ~ table) }}
    {% endfor %}
{% endmacro %}
