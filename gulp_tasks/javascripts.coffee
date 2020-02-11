gulp = require('gulp')
coffee = require('gulp-coffee')
uglify = require('gulp-uglify-es').default
concat = require('gulp-concat')
plumber = require('gulp-plumber')

gulp.task 'js:vendor', ->
  gulp.src([
    './node_modules/jquery/dist/jquery.js'
    './node_modules/tether/dist/js/tether.js'
    './node_modules/bootstrap/dist/js/bootstrap.js'
    './node_modules/angular/angular.js'
    './node_modules/@uirouter/angularjs/release/angular-ui-router.js'
    './node_modules/angular-cookie/angular-cookie.js'
    './node_modules/angularjs-rails-resource/angularjs-rails-resource.js'
    './node_modules/ngstorage/ngStorage.js'
    './node_modules/angular-translate/dist/angular-translate.js'
    './node_modules/angular-translate-loader-url/angular-translate-loader-url.js'
    './node_modules/angular-elastic/elastic.js'
    './node_modules/ngmap/build/scripts/ng-map.js'
    './node_modules/angular-video/js/anguvideo.js'
    './node_modules/angular-animate/angular-animate.js'
    './vendor/google-places-autocomplete/autocomplete.js'
    './node_modules/angular-ui-notification/dist/angular-ui-notification.js'
    './node_modules/angular-sanitize/angular-sanitize.min.js'
  ]).pipe(concat('vendor.min.js'))
    .pipe(uglify())
    .pipe gulp.dest('public/js')

gulp.task 'js', ->
  gulp.src('src/js/**/*.coffee')
      .pipe plumber()
      .pipe(coffee(bare: no))
      .pipe(uglify())
      .pipe(concat('app.min.js'))
      .pipe gulp.dest('public/js')
