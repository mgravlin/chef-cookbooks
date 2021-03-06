# Adapted from BBY's splunk cookbook


default['splunk']['receiver_port']             = "9997"
default['splunk']['forwarder_install_opts']             = "AGREETOLICENSE=Yes WINEVENTLOG_APP_ENABLE=1 WINEVENTLOG_SEC_ENABLE=1 WINEVENTLOG_SYS_ENABLE=1 WINEVENTLOG_SET_ENABLE=1 PERFMON=cpu,memory,network,diskspace MIGRATESPLUNK=1"

#Set the default role for splunk forwarders
default['splunk']['forwarder_role']             = "default"
default['splunk']['forwarder_config_folder']    = "prodlike"

# Max Transfer Rate (KB) - 0 is unlimited
default['splunk']['limits_thruput']             = "0"

# SSL Forwarding

# http://wiki.splunk.com/index.php?title=Community:Splunk2Splunk_SSL_SelfSignedCert_NewRootCA
default['splunk']['ssl_forwarding']             = false

# Located in files/default/ssl/forwarders/
default['splunk']['ssl_forwarding_cacert']      = "myCACertificate.pem"
default['splunk']['ssl_forwarding_servercert']  = "myServerCertificate.pem"
default['splunk']['ssl_forwarding_pass']        = "splunk"      # SSL Cert Password
