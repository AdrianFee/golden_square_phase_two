# Improve grammar

## 1. Describe the problem

```
> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.
```

## 2. Design the method signature

``` ruby
improved = improve_grammar(text)

* text is a string containing words: e.g. "The quick brown fox jumped over the lazy dog."
* improved is a string stating whether the grammar is correct or not
```

## 3. Create examples as tests

``` ruby 

# 1 
improve_grammar("The quick brown fox jumped over the lazy dog")
# => "Incorrect grammar. Try again."

# 2
improve_grammar("The quick brown fox jumped over the lazy dog.")
# => "Correct grammar"

# 3
improve_grammar("the quick brown fox jumped over the lazy dog.")
# => "Incorrect grammar. Try again."

```

## 4. Implement the behaviour