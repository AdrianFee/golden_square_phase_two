# Reading Time Method Design Recipe

## 1. Describe the problem

```
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can 
> read 200 words a minute.
```

## 2. Design the method signature

``` ruby
reading_time = time_management(text)

* text is a string containing words: e.g. "The quick brown fox jumped over the lazy dog"
* reading_time is a number of minutes to read the text
```

## 3. Create examples as tests

``` ruby 

# 1 
time_management(50_WORDS)
# => 0.25 minutes

# 2
time_management(100_WORDS)
# => 0.5 minutes

# 3
time_management(200_WORDS)
# => 1 minute

```

## 4. Implement the behaviour