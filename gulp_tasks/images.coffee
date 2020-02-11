gulp = require('gulp')

gulp.task 'images', ->
  gulp.src('src/images/**/*')
      .pipe gulp.dest("public/images")
