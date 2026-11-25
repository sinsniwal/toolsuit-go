#!/usr/bin/env bash
set -e

echo "🚀 Preparing toolsuit for PyPI release..."

echo "🧹 Cleaning up old build artifacts..."
rm -rf dist/ build/ src/*.egg-info

echo "📦 Installing build tools..."
python -m pip install --upgrade build twine

echo "🏗️ Building the package distribution (sdist and bdist_wheel)..."
python -m build

echo "📤 Uploading directly to PyPI..."
python -m twine upload dist/*

echo "✅ Successfully pushed version to PyPI!"
