This is just an example docker image showing how docker could be used to:

	* create a consistent development environment e.g. for Conectus
	* include all of the necessary dependencies e.g. bower-rhodecode-resolver

To have a look around in this container, just add a suffix to override the CMD / ENTRYPOINT:

	e.g.

		./runme.sh /bin/bash

			or

		docker run -it robertbarrow/conectus:latest /bin/bash
--------------------------------------------------------------------------------------------
Version info:


