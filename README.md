# homebrew-tap

Personal Homebrew tap ([takihito](https://github.com/takihito)).

## Usage

```bash
brew tap takihito/tap
brew install <formula>
```

Or install a formula directly without tapping first:

```bash
brew install takihito/tap/<formula>
```

Since this tap is unsigned, Homebrew may refuse to load its formulae with an
"untrusted tap" error. Trust it with:

```bash
# Trust a single formula
brew trust --formula takihito/tap/<formula>

# Or trust the whole tap
brew trust takihito/tap
```

## Formulae

| Formula | Description |
|---------|-------------|
| [glasp](https://github.com/takihito/glasp) | CLI tool for developing, managing, and deploying GAS (Google Apps Script) code locally |
