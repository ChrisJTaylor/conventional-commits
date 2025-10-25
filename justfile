# GitVersion exploration commands

# Show all available commands
_default:
  @just --list

# Show GitVersion information
version:
    dotnet-gitversion

# Show GitVersion in JSON format
version-json:
    dotnet-gitversion /output json

# Show next version
next-version:
    dotnet-gitversion /showvariable SemVer

# Show current branch version
branch-version:
    dotnet-gitversion /showvariable BranchName

# Show all GitVersion variables
variables:
    dotnet-gitversion /showconfig

# Create a feature branch
feature branch:
    git checkout -b feature/{{branch}}

# Create a release branch  
release version:
    git checkout -b release/{{version}}

# Create a hotfix branch
hotfix version:
    git checkout -b hotfix/{{version}}

# Conventional commit with cocogitto
commit type message:
    cog commit {{type}} "{{message}}"

# Generate changelog
changelog:
    cog changelog

# Check commit format
check:
    cog check
