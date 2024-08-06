#!/usr/bin/env python3
import sys
import tiktoken

def count_tokens(text):
    encoding = tiktoken.get_encoding("cl100k_base")
    return len(encoding.encode(text))

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: cli-tokenizer-counter.py <text>")
        sys.exit(1)
    
    text = " ".join(sys.argv[1:])
    token_count = count_tokens(text)
    print(f"Token count: {token_count}")