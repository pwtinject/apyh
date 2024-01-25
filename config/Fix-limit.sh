#!/bin/bash
# // Fix limit service with cron

cat >/etc/cron.d/Lim_vm_xdxl <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/1 * * * * root /usr/bin/limit-ip vmip
END

cat >/etc/cron.d/Lim_vl_xdxl <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/1 * * * * root /usr/bin/limit-ip vlip
END

cat >/etc/cron.d/Lim_tr_xdxl <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/1 * * * * root /usr/bin/limit-ip trip
END

service cron restart
