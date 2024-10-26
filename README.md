# Decidim::FeedsUi

A very reduced mobile-first UI for the decidim feeds module.

This module rewrites some parts of the decidim layout to allow a social feeds optimized UI, that doesn't display the main menu any more. Instead it adds a bottom menu/tabbar that gives direct access to the main functions of a social feed.

**Use this module only if you want to use Decidim solely as a social media platform.**

## Usage

FeedsUi will add an overview over all users under /feeds_ui/allusers

It will also overwrite the decidim layout for a more minimalistic and mobile first interface that is optimal for the [feeds](https://github.com/DecidimAustria/decidim-module-feeds) and [posts](https://github.com/DecidimAustria/decidim-module-posts) modules.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "decidim-feeds_ui"
```

And then execute:

```bash
bundle
```

## Contributing

Contributions are welcome !

We expect the contributions to follow the [Decidim's contribution guide](https://github.com/decidim/decidim/blob/develop/CONTRIBUTING.adoc).

## Security

Security is very important to us. If you have any issue regarding security, please disclose the information responsibly by sending an email to __alex [at] rusa [dot] at__ and not by creating a Github issue.

## License

This engine is distributed under the GNU AFFERO GENERAL PUBLIC LICENSE.
