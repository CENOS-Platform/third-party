/***********************************************************************
Copyright (c) 2019 Altair Engineering, Inc. All rights reserved.

Contains trade secrets of Altair Engineering, Inc. Copyright notice
does not imply publication. Decompilation or disassembly of this
software is strictly prohibited.
***********************************************************************/

#ifndef NETLIBTOC_H
#define NETLIBTOC_H

#if defined __CPLUSPLUS__ || defined __cplusplus
extern "C" {
#endif

#include <sys/types.h>
#include <stdint.h>

#include "lmx.h"
#include "alakit.h"

#define LM_DUP_NONE   0x4000    /* Don't allow any duplicates */
#define LM_DUP_USER   0x1       /* Allow dup if user matches */
#define LM_DUP_HOST   0x2       /* Allow dup if host matches */
#define LM_DUP_DISP   0x4       /* Allow dup if display matches */
#define LM_DUP_VENDOR 0x8       /* Allow dup if vendor-defined matches */

#define NETLIBTOC_MAX_BUFFER_SIZE 4096

#define NetlibToCConnected           0
#define NetlibToCDisconnected        1
#define NetlibToCAutomaticHeartbeat  0
#define NetlibToCManualHeartbeat     1

#define ALM_MSG_MAX_LEN              1024

#define ALM_COUNT_TOTAL              1
#define ALM_COUNT_AVAIL              2
#define ALM_COUNT_USED               3

#define ALM_OPT_ABUSE_THRESHOLD      1
#define ALM_OPT_DECAY_GROUP          2
#define ALM_OPT_HEARTBEAT_INTERVAL   3
#define ALM_OPT_HEARTBEAT_RETRIES    4
#define ALM_OPT_DUPGROUP             5
#define ALM_OPT_RES_TIMEOUT          6
#define ALM_OPT_RES_TOKEN            7
#define ALM_OPT_MODULE_NAME          8
#define ALM_OPT_MODULE_VER           9
#define ALM_OPT_DECAY_HOST           10
#define ALM_OPT_COUNT                11
#define ALM_OPT_BORROW_HOURS         12
#define ALM_OPT_DISABLE_GLOBALZONE   13    /* Option should not be used unless instructed by licensing team */
#define ALM_OPT_DECAY_CORE_COUNT     14
#define ALM_OPT_DECAY_CORE_COST      15
#define ALM_OPT_ASYNC_MSG_CALLBACK   16
#define ALM_OPT_TRIAL_DAYS           17
#define ALM_OPT_TRIAL_ALLOW_VIRTUAL  18
#define ALM_OPT_TRIAL_ALLOW_TERMINAL 19
#define ALM_OPT_TRIAL_END_DATE       20

#define ALM_BORROW_HOURS_MAX         -1
#define ALM_BORROW_RETURN            -2

#define ALM_ATTR_OPT void *) (uintptr_t

typedef enum {
  ALM_MSG_GEN = 1,
  ALM_MSG_UP,
  ALM_MSG_TTF,
  ALM_MSG_CT,
  ALM_MSG_GEN_ASYNC,
  ALM_MSG_UP_ASYNC
} ALM_MSG_TYPE;

typedef enum {
  ALM_UNIT_HYPERWORKS = 0,
  ALM_UNIT_SOLIDTHINKING
} ALM_UNIT_TYPE;

typedef enum {
  ALM_GZ_AUTO = 0,
  ALM_GZ_DISABLED,
  ALM_GZ_AM,
  ALM_GZ_EU,
  ALM_GZ_AP
} ALM_GLOBALZONE;

typedef enum {
  ALM_ATTR_OPT_UNKNOWN = 0,
  ALM_ATTR_OPT_EXIT_ON_DLL_INIT_FAILURE,
  ALM_ATTR_OPT_SUBSYS,
  ALM_ATTR_OPT_UNIT_TYPE,
  ALM_ATTR_OPT_HHWU_AUTH_TOKEN,
  ALM_ATTR_OPT_GLOBALZONE,                /* Option should not be used unless instructed by licensing team */
  ALM_ATTR_OPT_HHWU_SESSION_ID,
  ALM_ATTR_OPT_ALAS_CO_REQUIRE_FIRST_RUN_CHECK,
  ALM_ATTR_OPT_SO_PATH_OVERRIDE
} ALM_ATTR_OPT_TYPE;

typedef enum {
  ALM_TYPE_ERROR = -1,
  ALM_TYPE_LOCAL = LMX_TYPE_LOCAL,
  ALM_TYPE_NETWORK = LMX_TYPE_NETWORK,
  ALM_TYPE_BORROW = LMX_TYPE_BORROW,
  ALM_TYPE_TRIAL = LMX_TYPE_TRIAL,
  ALM_TYPE_CONSUMABLE = 10
} ALM_LICENSE_TYPE;

typedef enum
{
  ALM_TRIAL_STATUS_UNKNOWN = 0,
  ALM_TRIAL_STATUS_ELIGIBLE,
  ALM_TRIAL_STATUS_ACTIVE,
  ALM_TRIAL_STATUS_EXPIRED,
  ALM_TRIAL_STATUS_NO_VIRTUAL,
  ALM_TRIAL_STATUS_NO_TERMINAL,
} ALM_TRIAL_STATUS;

#define MAX_VER_LEN 30
#define MAX_FEATURE_LEN 30
#define MAX_LONGNAME_SIZE 1024
#define MAX_USER_NAME MAX_LONGNAME_SIZE
#define MAX_HOSTNAME MAX_LONGNAME_SIZE
#define MAX_DISPLAY_NAME MAX_LONGNAME_SIZE
#define MAX_DECAY_HOSTNAME 64
#define MAX_LIC_TYPE_LENGTH 32

typedef enum {
	ALM_SUBSYS_ERROR = -1,
	ALM_SUBSYS_UNKNOWN = 0,
	ALM_SUBSYS_LMX = 1,
	ALM_SUBSYS_HHWU = 2
} ALM_SUBSYS_TYPE;

typedef enum {
	ALM_SUCCESS = 0,
	ALM_LMX_ZERO_REMAP = -1,
	ALM_PRODUCT_DISABLED = -2,
	ALM_BORROW_TOO_LONG = -3,
	ALM_UNKNOWN_ERROR = -4,
	ALM_MESSAGE_ERROR = -5,
	ALM_BAD_PARAM = -6,
	ALM_LOCAL_ONLY = -7,
	ALM_INVALID_OPERATION = -8,
	ALM_RES_NOT_FOUND = -9,
	ALM_RES_NO_SIG = -10,
	ALM_RES_BAD_SIG = -11,
	ALM_FILE_MMAP_ERROR = -12,
	ALM_CANNOT_LOAD_SHARED_LIBRARY = -13,
	ALM_NO_MEMORY = -14,
	ALM_LMX_INIT_FAILURE = -15,
	ALM_HHWU_INIT_FAILURE = -16,
  ALM_ALAKIT_INIT_FAILURE = -17,
  ALM_HB_EXIT_DISCONNECTED = -18,
  ALM_HB_EXIT_EXPIRED = -19,
  ALM_HB_EXIT_ALAS_REVOKED = -20,
  ALM_HB_EXIT_ALAS_OFFLINE_EXPIRED = -21,
  ALM_HB_EXIT_UNKNOWN = -22,
  ALM_HHWU_INVALID_SESSION = -23,
  ALM_HHWU_SESSION_RECOVER_FAILED = -24,
  ALM_NETWORK_ERROR = -25,
  ALM_SHARED_LIBRARY_SIG_VERIFY_FAILED = -26,
  ALM_NO_VALID_LIC_SOURCES = -27,
  ALM_FAILED_TO_APPLY_TRIAL_SETTINGS = -28
} ALM_STATUS;

typedef enum {
  ALM_HOSTID_ETHERNET,
  ALM_HOSTID_USERNAME,
  ALM_HOSTID_HOSTNAME,
  ALM_HOSTID_IPADDRESS,
  ALM_HOSTID_CUSTOM,
  ALM_HOSTID_DONGLE_HASPHL,
  ALM_HOSTID_HARDDISK,
  ALM_HOSTID_LONG,
  ALM_HOSTID_BIOS,
  ALM_HOSTID_WIN_PRODUCT_ID,
  ALM_HOSTID_WIN_INSTALL_ID,
  ALM_HOSTID_AWS_INSTANCE_ID,
  ALM_HOSTID_GCE_INSTANCE_ID,
  ALM_HOSTID_AZURE_INSTANCE_ID,
  ALM_HOSTID_OCI_INSTANCE_ID,
  ALM_HOSTID_UNKNOWN,
  ALM_HOSTID_ALL
} ALM_HOSTID_TYPE;

typedef struct _ALM_FEATURE_INFO {
  char feature_name[LMX_MAX_NAME_LENGTH+1];          /* name of feature */
  int major_ver;                                     /* major version number */
  int minor_ver;                                     /* minor version number */
  ALM_LICENSE_TYPE license_type;                     /* type of license, local, network, trial etc, see enum */
  char start_date[LMX_MAX_SHORT_STRING_LENGTH+1];    /* start date, if applicable, format "YYYY-MM-DD" */
  char expire_date[LMX_MAX_SHORT_STRING_LENGTH+1];   /* expire date, if applicable, format "YYYY-MM-DD" */
  char expire_time[LMX_MAX_SHORT_STRING_LENGTH+1];   /* expire time, if applicable, format "HH:MM" */
  char options_string[LMX_MAX_FIELD_LENGTH+1];       /* options string, if applicable */
  char serial_number[LMX_MAX_FIELD_LENGTH+1];        /* serial number, if applicable */
  int count;                                         /* total in the license file, -1 if unlimited, 0 if nodelocked */ 
  int softlimit;                                     /* softlimit in license file if set, 0 otherwise */
  int last_co_decayed_count;                         /* final requested count after decay is applied */
  int alas_license_id;                               /* license id of an ALAS activated license, 0 otherwise */
  int alas_offline_days;                             /* number of days an ALAS license can be offine, 0 if HB isnt enabled */
	int64_t feat_seconds_total;                        /* number of feature seconds total for a consumable feature */
	int64_t feat_seconds_used;                         /* number of feature seconds used for a consumable feature */
  struct _ALM_FEATURE_INFO* next;                    /* pointer to next in list, or NULL if end */
} ALM_FEATURE_INFO;

typedef struct _ALM_LICENSE_INFO {
  ALM_SUBSYS_TYPE subsystem;                         /* indicates subsystem, LM-X, HHWU, etc. see enum */
  int inuse;                                         /* 1 if this represents a license currently in use */
  int port;                                          /* port number of server if applicable */
  char path[LMX_MAX_SHORT_STRING_LENGTH+1];          /* path of license, either /path/to/file, hostname, or "Securestore" */

  /* At this time the following members only apply to Managed Licensing licenses via NetlibToCGetLicenseInfo  */
  char type[MAX_LIC_TYPE_LENGTH+1];                  /* type of license.  Current possible values are:
                                                        NAMED_USER, FLOATING, CONSUMABLE, CONSUMABLE_POST */
  char altair_desc[LMX_MAX_SHORT_STRING_LENGTH+1];   /* altair description of the license */
  char customer_desc[LMX_MAX_SHORT_STRING_LENGTH+1]; /* customer description of the license */
  char license_uuid[LMX_MAX_SHORT_STRING_LENGTH+1];  /* UUID of the license */
  int hhwu_customer_id;                              /* Customer ID in Managed Licensing system */
  int license_id;                                    /* ID of Managed Licensing license */
  time_t min_start_time;                             /* start time of earliest starting feature in license */
  time_t max_expire_time;                            /* end time of latest ending feature in license */
  int allowed_assignments;                           /* total amount of assignments allowed in the named user license */
  int used_assignments;                              /* amount of assignments that are in use in the named user license */
  ALM_FEATURE_INFO* consumable_features;             /* linked list of consumable features in this license */
  /* End Manged Licensing only values */

  ALM_FEATURE_INFO* features;                        /* linked list of checked out features */
  struct _ALM_LICENSE_INFO* next;                    /* pointer to next license */
} ALM_LICENSE_INFO;

typedef struct _ALM_HOSTID {
  ALM_HOSTID_TYPE type; /* Type of HostID; e.g. ALM_HOSTID_ETHERNET */
  char type_str[LMX_MAX_SHORT_STRING_LENGTH+1]; /* str representation of type; e.g. ETHERNET*/
  char description[LMX_MAX_SHORT_STRING_LENGTH+1]; /* Description of HostID */
  char value[LMX_MAX_SHORT_STRING_LENGTH+1]; /* HostID value  */
  struct _ALM_HOSTID* next;
} ALM_HOSTID;

typedef struct _ALM_TRIAL_INFO {
  ALM_TRIAL_STATUS status;                   /* the current status of the trial */
  char feature_name[LMX_MAX_NAME_LENGTH+1];  /* name of feature */
  int major_ver;                             /* major version number of the trial license. may be >= requested version */
  int minor_ver;                             /* minor version number of the trial license. may be >= requested version */
  int days_remaining;                        /* how many full days still remain in the trial */
  struct _ALM_TRIAL_INFO* next;
} ALM_TRIAL_INFO;

typedef struct NetlibToCAttr NetlibToCAttr;

typedef struct NetlibToC NetlibToC;

NetlibToCAttr* NetlibToCAttrInit(void);

void NetlibToCAttrCleanUp(NetlibToCAttr* netlibToCAttr);

const char* NetlibToCAttrGetErrorString(NetlibToCAttr* netlibToCAttr);

ALM_STATUS NetlibToCSetAttr(NetlibToCAttr* netlibToCAttr, ALM_ATTR_OPT_TYPE option, const void *value);

NetlibToC* NetlibToCInitEx(NetlibToCAttr* netlibToCAttr, ALM_STATUS* status);

NetlibToC* NetlibToCInit(void);

#define NetlibToCGridworksInit(x) NetlibToCInit()

int NetlibToCCheckoutTokens(
	NetlibToC*  netlibToC,
	const char* feature,
	const char* version,
	const char* licenseFile,
	int         heartbeat,
	int         tokens,
	int         dupgroup);

#define NetlibToCGridworksCheckoutTokens(a, b, c, d, e, f, g, h) NetlibToCCheckoutTokens(a, c, d, e, f, g, h)

int NetlibToCCheck(NetlibToC* netlibToC);

int NetlibToCCheckLicense(NetlibToC* netlibToC);

void NetlibToCCleanUp(NetlibToC* netlibToC);

const char* NetlibToCGetErrorString(NetlibToC* netlibToC);

const char* NetlibToCGetWarning(NetlibToC* netlibToC);

int NetlibToCGetErrorCode(NetlibToC* netlibToC);

void NetlibToCCheckin(NetlibToC* netlibToC);

void NetlibToCPingLicenseServer(NetlibToC* netlibToC);

int NetlibToCCheckoutFeatureLicense(
	NetlibToC*  netlibToC,
	const char* feature,
	const char* version,
	const char* licenseFile,
	int         heartbeat);    
    
/* Function prototypes needed for timeout functionality */    
void NetlibToCIsActive   (NetlibToC* netlibToC);    
int NetlibToCIsIdle     (NetlibToC* netlibToC);

/* Function prototypes needed for checking feature existence */
int NetlibToCDoesFeatureExist(
	const char* feature,
	const char* version,
	const char* licfile);

int NetlibToCDoesFeatureExistEx(
  NetlibToC* netlibToC,
	const char* feature,
	const char* version,
	const char* licfile);

/* Function prototypes needed for getting number of tokens available */
int NetlibToCGetTotalForFeature(NetlibToC*  netlibToC, int type, const char* feature);

/* provided for backwards compatibility. */
int GetTotalAvailableForFeature(NetlibToC * netlibToC, const char * name);

/* Function prototype for overriding the values
   for username, hostname, or display */
int NetlibToCSetUHDOverride(
	NetlibToC* netlibToC,
	const char* user,
	const char* host,
	const char* disp);

int NetlibToCSetOption(NetlibToC* netlibToC, int option, void* value);

const char* NetlibToCGetOptions(NetlibToC* netlibToC, const char* name);

int NetlibToCMsgServer(NetlibToC* netlibToC, int msgtype, char* msg, int* len);

int NetlibToCGetLicenseType(NetlibToC* netlibToC, const char* name);

int NetlibToCGetBorrowStatus(NetlibToC* netlibToC);

int NetlibToCPutenv(char* string);

ALM_SUBSYS_TYPE NetlibToCGetSubsystem(NetlibToC* netlibToC);

ALM_LICENSE_INFO* NetlibToCGetLicensePath(NetlibToC* netlibToC);

ALM_LICENSE_INFO* NetlibToCGetLicenseInfo(NetlibToC* netlibToC, void* opts);

ALM_HOSTID* NetlibToCGetHostids(NetlibToC* netlibToC);

ALM_TRIAL_INFO NetlibToCCheckTrialEligibility(NetlibToC* netlibToC,
                                              const char* feature,
                                              const char* version);

/* function prototypes for reservation system */
const char* NetlibToCGetReservationToken(NetlibToC* netlibToC);

int NetlibToCDeleteReservation(NetlibToC* netlibToC, const char* token);

int NetlibToCReserveTokens(NetlibToC* netlibToC,
                           const char* version,
                           const char* licenseFile,
                           int count);

int NetlibToCReserveFeatureLicense(NetlibToC* netlibToC,
                                   const char* feature,
                                   const char* version,
                                   const char* licenseFile,
                                   int count);

#if defined __CPLUSPLUS__ || defined __cplusplus
}
#endif

#endif /* NETLIBTOC_H */
