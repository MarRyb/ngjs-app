gulp = require('gulp')
sass = require('gulp-sass')
minifyCSS = require('gulp-csso')
concat = require('gulp-concat')

gulp.task 'css:vendor', ->
  gulp.src([
    './node_modules/bootstrap/dist/css/bootstrap.css'
    './bower_components/angular-google-places-autocomplete/dist/autocomplete.min.css'
    './node_modules/angular-ui-notification/dist/angular-ui-notification.css'
  ]).pipe(concat('vendor.min.css'))
    .pipe(minifyCSS())
    .pipe gulp.dest('public/css')

gulp.task 'css', ->
  gulp.src('src/css/*.sass')
      .pipe(sass())
      .pipe(concat('app.min.css'))
      .pipe(minifyCSS())
      .pipe gulp.dest('public/css')
