/**
 * Running externalized configuration
 * Assuming the following configuration files
 * - in the executing user's home at ~/.grails/<app_name>Config/[Config.groovy|DataSource.groovy]
 * - config location set path by system variable '<APP_NAME>_CONFIG_LOCATION'
 * - dataSource location set path by system environment variable '<APP_NAME>_DATASOURCE_LOCATION'
 */
grails.config.locations = []
def defaultConfigFiles = ["/Users/canatalio/conf/alumnimain/Config.groovy",
                          "/Users/canatalio/conf/alumnimain/DataSource.groovy"]
defaultConfigFiles.each { filePath ->
  def f = new File(filePath)
  if (f.exists()) {
    grails.config.locations << "file:${filePath}"
  } else {

  }
}
String bashSafeEnvAppName = appName.toUpperCase(Locale.ENGLISH).replaceAll(/-/, '_')

/*
def externalConfig = System.getenv("alumnimain_CONFIG_LOCATION")
if (externalConfig) {
  grails.config.locations << "file:" + externalConfig


}
def externalDataSource = System.getenv("alumnimain_DATASOURCE_LOCATION")
if (externalDataSource) {
  grails.config.locations << "file:" + externalDataSource

}
*/


grails.project.groupId = tdx // change this to alter the default package name and Maven publishing destination

// The ACCEPT header will not be used for content negotiation for user agents containing the following strings (defaults to the 4 major rendering engines)
grails.mime.disable.accept.header.userAgents = ['Gecko', 'WebKit', 'Presto', 'Trident']
grails.mime.types = [ // the first one is the default format
                      all          : '*/*', // 'all' maps to '*' or the first available format in withFormat
                      atom         : 'application/atom+xml',
                      css          : 'text/css',
                      csv          : 'text/csv',
                      form         : 'application/x-www-form-urlencoded',
                      html         : ['text/html', 'application/xhtml+xml'],
                      js           : 'text/javascript',
                      json         : ['application/json', 'text/json'],
                      multipartForm: 'multipart/form-data',
                      rss          : 'application/rss+xml',
                      text         : 'text/plain',
                      hal          : ['application/hal+json', 'application/hal+xml'],
                      xml          : ['text/xml', 'application/xml']
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']
grails.resources.adhoc.includes = ['/images/**', '/css/**', '/js/**', '/plugins/**']

// Legacy setting for codec used to encode data with ${}
grails.views.default.codec = "html"

// The default scope for controllers. May be prototype, session or singleton.
// If unspecified, controllers are prototype scoped.
grails.controllers.defaultScope = 'singleton'

// GSP settings
grails {
  views {
    gsp {
      encoding = 'UTF-8'
      htmlcodec = 'xml' // use xml escaping instead of HTML4 escaping
      codecs {
        expression = 'html' // escapes values inside ${}
        scriptlet = 'html' // escapes output from scriptlets in GSPs
        taglib = 'none' // escapes output from taglibs
        staticparts = 'none' // escapes output from static template parts
      }
    }
    // escapes all not-encoded output at final stage of outputting
    // filteringCodecForContentType.'text/html' = 'html'
  }
}


grails.converters.encoding = "UTF-8"
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart = false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

// configure passing transaction's read-only attribute to Hibernate session, queries and criterias
// set "singleSession = false" OSIV mode in hibernate configuration after enabling
grails.hibernate.pass.readonly = false
// configure passing read-only to OSIV session by default, requires "singleSession = false" OSIV mode
grails.hibernate.osiv.readonly = false

grails.plugin.springsecurity.logout.postOnly = false
logout.afterLogoutUrl = "/home"


environments {
  development {
    grails.logging.jul.usebridge = true

    //Disable this flag to hide private data
      grails.tdx.showprivatedata = true
  }
  production {
    grails.logging.jul.usebridge = false

      grails.tdx.showprivatedata = false
    grails.tdx.facebookApiKey = System.getenv("FACEBOOK_API_KEY")

      //Stormpath
      grails.tdx.stormpath.api.key = System.getenv("STORMPATH_API_KEY_ID")
      grails.tdx.stormpath.api.secret = System.getenv("STORMPATH_API_KEY_SECRET")
      grails.tdx.stormpath.url = System.getenv("STORMPATH_URL")

      //Sendgrid
      grails.tdx.sendgrid.pw = System.getenv("SENDGRID_PASSWORD")
      grails.tdx.sendgrid.user = System.getenv("SENDGRID_USERNAME")

      // TODO: grails.serverURL = "http://www.changeme.com"
  }
}

// log4j configuration
log4j = {
  // Example of changing the log pattern for the default console appender:
  //
  //appenders {
  //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
  //}

  error 'org.codehaus.groovy.grails.web.servlet',        // controllers
          'org.codehaus.groovy.grails.web.pages',          // GSP
          'org.codehaus.groovy.grails.web.sitemesh',       // layouts
          'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
          'org.codehaus.groovy.grails.web.mapping',        // URL mapping
          'org.codehaus.groovy.grails.commons',            // core / classloading
          'org.codehaus.groovy.grails.plugins',            // plugins
          'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
          'org.springframework',
          'org.hibernate',
          'net.sf.ehcache.hibernate'
}

// Facebook Spring Security plugin:
grails.plugin.springsecurity.facebook.domain.classname = 'com.tdx.FacebookUser'
grails.plugin.springsecurity.facebook.appId = '103851025259'
grails.plugin.springsecurity.facebook.secret = 'd912ae27a5a525b3c21529eb36b51174'
grails.plugin.springsecurity.facebook.filter.type = 'redirect'

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.tdx.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.tdx.UserRole'
grails.plugin.springsecurity.authority.className = 'com.tdx.Role'
grails.plugin.springsecurity.authority.groupAuthorityNameField = 'authorities'
grails.plugin.springsecurity.useRoleGroups = true
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        '/**'             : ['permitAll'],
        '/contact/**'     : ['permitAll'],
        '/rush/**'        : ['permitAll'],
        '/philanthropy/**': ['permitAll'],
        '/home': ['permitAll'],
        '/index'          : ['permitAll'],
        '/index.gsp'      : ['permitAll'],
        '/assets/**'      : ['permitAll'],
        '/**/js/**'       : ['permitAll'],
        '/**/css/**'      : ['permitAll'],
        '/**/images/**'   : ['permitAll'],
        '/**/favicon.ico' : ['permitAll']
]
