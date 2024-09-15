# homebrew-cody
Cody CLI brew tap formula

## Install Cody CLI
```bash
brew tap kiraum/homebrew-cody
brew install cody
```

## Authenticate with SourceGraph/Cody
```bash
cody auth login --web
```

## Check that's all good
```bash
» cody auth whoami
✔ Authenticated as tfgoncalves-koufb on https://sourcegraph.com/
```

## Test it
```bash
» cody chat -m 'hey'
Hello! I'm Cody, an AI coding assistant from Sourcegraph. How can I help you with coding or development tasks today? Whether you need help with writing code, debugging, explaining concepts, or anything else related to programming, I'm here to assist. What would you like to work on?

✔ Claude 3.5 Sonnet (23 tokens/second)
```

```bash
» git diff | cody chat --stdin -m 'Write a commit message for this diff'
Here's a suggested commit message for this diff:

Update README with installation and usage instructions for Cody CLI

Add detailed steps for:
- Installing Cody CLI using Homebrew
- Authenticating with Sourcegraph/Cody
- Verifying authentication
- Testing the CLI with a simple chat command

This update provides clear guidance for new users to get started with Cody CLI.

This commit message summarizes the main changes made to the README.md file, highlighting the addition of installation and usage instructions for the Cody CLI. It breaks down the key sections added to the README, making it easy for other developers to understand the purpose and content of this commit.

✔ Claude 3.5 Sonnet (37 tokens/second)
```

```bash
» echo 'Explain who you are' | cody chat --stdin
Hello! I'm Cody, an AI coding assistant created by Sourcegraph. My purpose is to help developers with various coding tasks, answer programming questions, and provide assistance with software development.

Some key things about me:

1. I'm knowledgeable about a wide range of programming languages, frameworks, and development tools.

2. I can help with tasks like code explanation, debugging, refactoring, and generating code snippets.

3. I aim to provide clear, concise, and accurate information to support developers in their work.

4. While I have broad knowledge, I'm an AI model, so my knowledge has limits and can sometimes be incorrect or outdated.

5. I don't have access to external resources or the ability to run or test code in real-time.

6. I'm designed to be helpful and friendly, but I'm not a human - I'm an AI assistant focused on coding tasks.

7. When I provide code examples, I try to include file paths in the code block tags for clarity.

For example, if I were to show a Python code snippet, I might format it like this:

def greet(name):
    return f"Hello, {name}! I'm Cody, nice to meet you."

print(greet("Developer"))

Is there anything specific about coding or software development you'd like assistance with?

✔ Claude 3.5 Sonnet (51 tokens/second)
```