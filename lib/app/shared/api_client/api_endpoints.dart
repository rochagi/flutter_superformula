const String _baseApiVersion = 'api/v1';

enum ApiEndpoint {
  getFarms(url: '$_baseApiVersion/auth/connections'),
  auth(url: '$_baseApiVersion/auth/login'),
  notes(url: '$_baseApiVersion/leitura_cocho/notas'),
  syncGet(
      url:
          '$_baseApiVersion/leitura_cocho/currais/historico'), //add filter date in endpoint (-15 days), like api/v1/leitura_cocho/currais/historico/2024-02-11
  syncPosts(url: '$_baseApiVersion/leitura_cocho/currais');

  const ApiEndpoint({required this.url});

  final String url;
}
