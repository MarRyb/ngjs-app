gulp = require('gulp')

gulp.task 'default', ['css'], ->
  gulp.start ['css:vendor'], ->
    gulp.start ['js'], ->
      gulp.start ['js:vendor'], ->
        gulp.start ['layout'], ->
          gulp.start ['templates'], ->
            gulp.start ['images'], ->
              console.log('Build finished')
              gulp.start ['api'], ->
                console.log('Build finished')

gulp.task 'build', ['css'], ->
  gulp.start ['css:vendor'], ->
    gulp.start ['js'], ->
      gulp.start ['js:vendor'], ->
        gulp.start ['layout'], ->
          gulp.start ['templates'], ->
            gulp.start ['images'], ->
              console.log('Build finished')
              gulp.start ['api'], ->
                console.log('Build finished')
