gulp = require('gulp')
jade = require('gulp-jade')

gulp.task 'layout', ->
  gulp.src('src/index.jade')
      .pipe(jade())
      .pipe gulp.dest('public')
