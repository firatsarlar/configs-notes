NGINX location rules

1: Exact matches

There can be only one exact match – the clue is in the name!
```nginx  
  location = /foo/bar {
  # exact match
  }
```
2: High priority prefix

There can be more than one match, the longest one takes priority
```nginx
  location ^~ /foo {
  # request beginning with /foo
  }
```
3: Regex

There can be more than one match, the first one found takes priority. There are two variants
```nginx
  location ~ .foo$ {
  # case-sensitive regex
  }
  
  location ~* .foo$ {
  # case-insensitive regex
  }
```
4: Low priority prefix

There can be more than one match, the longest one takes priority
```nginx
  location /foo {
  # request beginning with /foo
  }
```
