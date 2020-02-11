gulp = require('gulp')

gulp.task 'api', ->
  gulp.src('src/api/*')
      .pipe gulp.dest("public/api")
