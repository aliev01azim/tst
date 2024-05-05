class LazyLoadResponse<T> {
  final int? statusCode;
  final Map<String, String>? headers;
  final List<T> data;
  final int? currentPage;
  final int? totalPages;
  LazyLoadResponse(
      {this.statusCode,
      this.headers,
      required this.data,
      this.currentPage,
      this.totalPages});

  bool get hasMore =>
      totalPages == null || currentPage == null || currentPage! < totalPages!;

  LazyLoadResponse<U> map<U>(U Function(T) mapper) {
    //этот маппер преобразует из LazyLoadResponse<DTO> в LazyLoadResponse<Entitiy>
    final mappedData = data.map(mapper).toList();
    return LazyLoadResponse<U>(
      statusCode: statusCode,
      headers: headers,
      data: mappedData,
      currentPage: currentPage,
      totalPages: totalPages,
    );
  }
}
