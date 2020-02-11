#file_manager = require './file_manager.coffee'
gulp         = require 'gulp'
concat       = require 'gulp-concat'
wrap         = require 'gulp-wrap-function'
declare      = require 'gulp-declare'
jade         = require 'gulp-jade'
Q            = require 'q'
#plumber      = require 'gulp-plumber'

#changed      = require('gulp-changed')

###
  Templates tasks
###

#gulp.task 'html', ->
#  gulp.src('src/js/**/*.jade')
#      .pipe(jade())
#      .pipe gulp.dest('public/js')

gulp.task 'templates', ->
  deferred = Q.defer()
  compileTemplates('public/html').then ->
    declareTemplates('templates.js', 'public/js').then ->
      deferred.resolve()
  deferred.promise

nameProcessor = (filePath) ->
  declare.processNameByPath(
    fp = filePath
      .replace("public/html", 'src')
      .replace('src/templates/', '') # second replace is needed until we remove files from src/templates dir
      .slice(0, -5) # Remove .html sufix
  ).replace /\./g, '/'

compileTemplates = (destination) ->
  deferred = Q.defer()
  stream = gulp
          .src "src/js/**/*.jade"
          .pipe jade()
          #.pipe(changed(destination, {extension: '.html'}))
          #.pipe jade(debug : no)
          .pipe gulp.dest(destination)

  stream.on 'end', -> deferred.resolve()
  deferred.promise

declareTemplates = (name, destination) ->
  deferred = Q.defer()
  stream = gulp
          .src ["public/html/**/*.html"]
          .pipe wrap((file) ->
            '"' + addSlashes(file) + '"'
          )
          .pipe declare(
            namespace : 'Templates',
            noRedeclare : yes,
            processName : nameProcessor
          )
          .pipe concat(name)
          .pipe gulp.dest(destination)
  stream.on 'end', -> deferred.resolve()
  deferred.promise

addSlashes = (string) ->
  string
  .replace(/[\\"']/g, '\\$&')
  .replace(/\u0000/g, '\\0')
  .replace(/\n/g, ' ')
