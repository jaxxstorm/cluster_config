{
  _cluster+: {
    tier: 'dev',
    region_name: 'us-west-2',
    cluster_name: 'kops',
    cluster_type: 'aws',
    dns_domain: 'leebriggs.net',
    aws_region: 'us-west-2',
  },
  _components+: {
    sealed_secrets: { path: 'components/sealed_secrets' },
    nginx_ingress: { path: 'components/nginx_ingress' },
    //cert_manager: { path: 'components/cert_manager' },
  },


  sealed_secrets+: (import 'sealed-secret.key'),
}