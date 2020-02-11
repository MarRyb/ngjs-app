gulp = require 'gulp'

gulp.task 'watch', ->
  gulp.watch 'src/js/**/*.coffee', ['js']

  gulp.watch 'src/css/**/*.sass', ['css']

  gulp.watch 'src/index.jade', ['layout']

  gulp.watch 'src/js/**/*.jade', ['templates']
