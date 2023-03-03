# Lingui action

1. run cli command for extract locales
2. if there are any changes in these files suggest to resolve them and exit
3. result is stable localization files in master branch 🚀

## Usage

You have to use yarn and have script `extract` in project package.json.

```json
{
  "scripts": {
    "extract": "lingui extract",
    "compile": "lingui compile"
  } 
}
```

Example workflow

```yaml
- uses: actions/setup-node@v3
- uses: actions/checkout@v3
  
# this step will be different for every project
- name: 'Install dependencies'
- run: |
    corepack enable
    yarn set version 3.2.0
    yarn install --silent
  
- uses: trisbee/lingui-action@v1
```

## Links

- [Official website](https://lingui.dev/)
- [Lingui CLI](https://www.npmjs.com/package/@lingui/cli)
- [Creating a composite action](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action)
