# Change these to match your configuration

INCLUDES = /home/morteza/Works/webgraph/
LIBS = /home/morteza/Works/webgraph/

#LIBS = /u/jpr/workspace/cpp_webgraph

base = -I$(INCLUDES) -L$(LIBS) -Wall

ifdef CONFIG_PROFILE
	prof = -pg
else
	prof =
endif

ifndef CONFIG_DBG
	FLAGS = $(base) -DCONFIG_FAST -O3 $(prof)
else
	FLAGS = $(base) -DCONFIG_FAST -g $(prof)
endif

#FLAGS = -I$(INCLUDES) -Wall -g
