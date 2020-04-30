# Crystal

https://crystal-lang.org

# Run playground

`crystal play`

# Compile and runs files

- Run
`crystal run hello_world.cr`

- Dynamically compiled (libraries are not included in binary)

`crystal build hello_world.cr`
 
- Production build (Optimized)

`crystal build hello_world.cr --release` 

- Use `ldd` to view dynamic links
 
`ldd hello_world`

- Statically compiled (libraries included in binary) 
NOTE: Building fully statical linked executables is currently only supported on Alpine Linux.

`crystal build hello_world.cr --release --static`

# Standard library documentation

https://crystal-lang.org/api

# Initializing a library or app

`crstyal init lib mylib`
`crystal init app myproject`


To package and share a module, push to github with the shard.yml file.


To add a package as a dependency in your projects shard.yml:
```yaml
  dependencies:
  myproject:
      github: your-github-user/myproject
  Run shards install
```

To require a dependency in the code::

```yaml
  require "myproject"
```

# Documentation
Write docstrings with Markdown formatting to generate docs using::

`crystal docs`
