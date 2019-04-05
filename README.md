# Elixir Action 

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

An action for running project with Elixir environment.

> The image is based on official [Elixir](https://hub.docker.com/_/elixir/).

## Usage
   
An example workflow to run Elixir test is as follows:

```
workflow "Elixir Test" {
  on = "push"
  resolves = ["Test"]
}

action "Test" {
  uses = "MilesChou/elixir-action@master"
  args = "mix test"
}
```

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/MilesChou/elixir-action.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/MilesChou/elixir-action/releases
