module ApplicationHelper
    def default_meta_tags
      {
        site: 'MrRoute',
        title: 'デートプラン作成WEBサイト',
        reverse: true,
        charset: 'utf-8',
        description: 'MrRouteはデートプランを自動的に作成してくれるWEBサービスです。ぜひご活用ください',
        canonical: request.original_url,
        separator: '|',
        icon: [
          { href: image_url('favicon.ico') },
          { href: image_url('/apple-touch-icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
        ],
        og: {
          site_name: :site, # もしくは site_name: :site
          title: :title, # もしくは title: :title
          description: :description, # もしくは description: :description
          type: 'website',
          url: request.original_url,
          image: image_url('ogp.png'),
          locale: 'ja_JP',
        },
        twitter: {
          card: 'summary_large_image',
          site: '@k5712040',
        }
      }
    end
  end