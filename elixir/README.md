# Ansible Elixir Role

Regra de instalação do ambiente de elixir.

- Erlang 1.0
- Elixir ~~latest ubuntu~~

## Dependencias

Nenhuma

## Como usar

Para rodar use:

```sh
ansible-playbook -i 'localhost,' --connection=local -K elixir/tasks/main.yml
```

## Customização do IEx

Podemos configurara o `IEx` através do arquivo `$HOME/.iex.exs`
Para saber mais detalhes de configuração do IEx pode usar:

```elixir
h IEx.configure
```
