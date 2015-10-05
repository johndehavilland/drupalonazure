core = 7.x
api = 2

; Drupal Core
projects[drupal][version] = "7.33"

; =====================================
; Contrib Modules
; =====================================

; By default, store all contrib modules in the "contrib" subdirectory of
; sites/all/modules.
defaults[projects][subdir] = "contrib"

projects[features][version] = 2.2

projects[azure_blob] = 1.x-dev

projects[sqlsrv] = 1.4