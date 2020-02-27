# Elixir Action 

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

An action for running project with Elixir environment.

> The image is based on official [Elixir](https://hub.docker.com/_/elixir/).

## Usage
   
Following is an example workflow to run Elixir test:

```yaml
steps:
  - name: Elixir action
    uses: mileschou/elixir-action@master
    with:
      args: mix test
```

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/MilesChou/elixir-action.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/MilesChou/elixir-action/releases
