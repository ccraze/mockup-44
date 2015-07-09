/*global module:false*/
module.exports = function(grunt) {

  grunt.initConfig({

    coffee: {
      compile: {
        options: {
          bare: true,
          sourceMap: true
        },
        files: [{
          expand: true,
          cwd: './',
          src: '<%= values.src.coffee %>',
          dest: './',
          ext: '.js'
        }]
      }
    },

    jade: {
      compile: {
        options: {
          pretty: true
        },
        files: [{
          expand: true,
          cwd: './',
          src: '<%= values.src.jade %>',
          dest: './',
          ext: '.html'
        }]
      }
    },

    sass: {
      compile: {
        options: {
          sourcemap: 'auto'
        },
        files: [{
          expand: true,
          cwd: './',
          src: '<%= values.src.sass %>',
          dest: './',
          ext: '.css'
        }]
      }
    },

    watch: {
      coffee: {
        files: '<%= values.src.coffee %>',
        tasks: ['coffee:compile']
      },
      jade: {
        files: '<%= values.src.jade %>',
        tasks: ['jade:compile']
      },
      scss: {
        files: '<%= values.src.sass %>',
        tasks: ['sass:compile']
      },
      livereload: {
        options: {
          livereload: true
        },
        files: '<%= values.src.browser %>'
      },
      gruntfile: {
        files: ['Gruntfile.js'],
        options: {
          reload: true
        }
      }
    }
  });

  grunt.config.set('values', {
    src: {
      coffee: ['**/*.coffee'],
      jade: ['**/*.jade'],
      sass: ['**/*.scss'],
      browser: ['**/*.html', '**/*.css', '**/*.js']
    }
  });

  // These plugins provide necessary tasks.
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-jade');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');

  // Default task.
  grunt.registerTask('default', ['watch']);
  grunt.registerTask('livereload', ['watch:livereload']);

};
