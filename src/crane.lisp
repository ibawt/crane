(in-package :cl-user)
(defpackage crane
  (:import-from :crane.database
                :database
                :connect
                :connectedp
                :disconnect
                :sql-query
                :query
                :with-transaction
                :table-exists-p)
  (:import-from :crane.types
                :sql-type
                :column-id
                :bool
                :int
                :bigint
                :smallint
                :numeric
                :double
                :text
                :varchar
                :timestamp
                :datetime
                :varchar-length)
  (:import-from :crane.config
                :*debug*
                :define-postgres-database
                :define-mysql-database
                :define-sqlite3-database
                :get-database
                :do-databases
                :list-databases)
  (:import-from :crane.table
                :table-class
                :table-name
                :table-abstract-p
                :table-columns
                :column
                :column-name
                :column-type
                :column-null-p
                :column-unique-p
                :column-primary-p
                :column-index-p
                :column-foreign
                :column-autoincrement-p
                :foreign-key
                :foreign-key-table
                :foreign-key-on-delete
                :foreign-key-on-update
                :referential-action-name
                :standard-db-object
                :deftable
                :id)
  (:import-from :crane.session
                :*session*
                :session
                :make-session
                :start
                :stop
                :session-databases
                :session-tables
                :session-migrate-p
                :session-migrations-directory
                :register-database
                :register-table)
  (:import-from :crane.query
                :create
                :create-instance
                :save
                :del
                :filter)
  (:export :database
           :connect
           :connectedp
           :disconnect
           :sql-query
           :query
           :with-transaction
           :table-exists-p
           :sql-type
           :column-id
           :bool
           :int
           :bigint
           :smallint
           :numeric
           :double
           :text
           :varchar
           :timestamp
           :datetime
           :varchar-length
           :*debug*
           :define-postgres-database
           :define-mysql-database
           :define-sqlite3-database
           :get-database
           :do-databases
           :list-databases
           :table-class
           :table-name
           :table-abstract-p
           :table-columns
           :column
           :column-name
           :column-type
           :column-null-p
           :column-unique-p
           :column-primary-p
           :column-index-p
           :column-foreign
           :column-autoincrement-p
           :foreign-key
           :foreign-key-table
           :foreign-key-on-delete
           :foreign-key-on-update
           :referential-action-name
           :standard-db-object
           :deftable
           :id
           :*session*
           :session
           :make-session
           :start
           :stop
           :session-databases
           :session-tables
           :session-migrate-p
           :session-migrations-directory
           :register-database
           :register-table
           :create
           :create-instance
           :save
           :del
           :filter)
  (:documentation "Import symbols from other packages and export them."))
