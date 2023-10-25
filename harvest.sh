#!/bin/sh
curl -FQUERY="select ivoid, source_value, source_format
	from rr.resource
	where source_format in ('doi', 'bibcode')" \
	-FMAXREC=100000 \
	-FLANG=ADQL \
	-FFORMAT=text/csv \
	https://dc.g-vo.org/tap/sync
