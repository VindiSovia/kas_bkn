class PencatatanModel {
  int? id;
  DateTime? date;
  int? nominal;
  String? keterangan, createdAt, updatedAt;

  PencatatanModel(
      {this.id,
      this.date,
      this.nominal,
      this.keterangan,
      this.createdAt,
      this.updatedAt});

  factory PencatatanModel.fromJson(Map<String, dynamic> json) {
    return PencatatanModel(
      id: json['id'],
      date: json['date'],
      nominal: json['nominal'],
      keterangan: json['keterangan'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}
