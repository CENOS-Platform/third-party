/**
*** Copyright (C) 2002-2013 X-Formation. All rights reserved.
***
*** The information and source code contained herein is the exclusive
*** property of X-Formation and may not be disclosed
*** or reproduced in whole or in part without explicit written authorization
*** from the company.
**/
/***********************************************************************
Copyright (c) 2019 Altair Engineering, Inc. All rights reserved.

Contains trade secrets of Altair Engineering, Inc. Copyright notice
does not imply publication. Decompilation or disassembly of this
software is strictly prohibited.
***********************************************************************/


#ifndef LMX_H
#define LMX_H

#include <time.h>
#include <stdlib.h>
#if defined(XF_UNIX) || defined(__MINGW32__)
#include <ctype.h>
#endif
#if defined(__linux__) || defined(__FreeBSD__) || defined(__MINGW32__)
#include <stdint.h>
#endif
#ifdef sun
#include <inttypes.h>
#endif

/* Fix for VC++ 6.0 which is too old to know what uintptr_t is */
/*lint -save -e761 */
#ifdef _MSC_VER
#if (_MSC_VER == 1200)
#ifndef uintptr_t
typedef unsigned long uintptr_t;
#endif
#endif
/*lint -restore */

#if (_MSC_VER > 1300)
/* Includes uintptr_t on VS.NET 2003 */
#include <stddef.h>
#endif
#endif

#ifdef __cplusplus
extern "C"
{
#endif

#define LMX_VERSION 550 /* Represent LM-X version as 3 digits: (majorver) (minorver) (minorver) */

typedef void * LMX_HANDLE;

#define LMX_OPTION void *) (uintptr_t

#define LMX_MAX_LONG_STRING_LENGTH  2048
#define LMX_MAX_VERY_LONG_STRING_LENGTH (256 * LMX_MAX_LONG_STRING_LENGTH)
#define LMX_MAX_SHORT_STRING_LENGTH 256

#define LMX_MAX_FIELD_LENGTH (4 * LMX_MAX_LONG_STRING_LENGTH)

#define LMX_MIN_NAME_LENGTH         1
#define LMX_MAX_NAME_LENGTH         64

#define LMX_MIN_COUNT 1
#define LMX_MAX_COUNT 2147483647

#define LMX_UNLIMITED_COUNT -1
#define LMX_LOGICAL_CPU_COUNT -2
#define LMX_PHYSICAL_CPU_COUNT -3

#define LMX_ALL_FEATURES ""

#define LMX_ALL_LICENSES 0

#define LMX_MIN_VERSION 0
#define LMX_MAX_VERSION 9999

#define LMX_MAX_HOSTIDS 16

#define LMX_SHARE_NONE    0x0000 /* License is not shared - default */
#define LMX_SHARE_HOST    0x0001 /* License is shared when multiple processes run on the same host (Network licensing only) */
#define LMX_SHARE_USER    0x0002 /* License is shared when multiple processes run as the same user on multiple host (Network licensing only) */
#define LMX_SHARE_CUSTOM  0x0004 /* License is shared with a custom tag (Network licensing only) */

#define LMX_SHARE_TS      0x0100 /* License is shared to work on all sessions (not just console) on a terminal server (Local licensing only) */
#define LMX_SHARE_VIRTUAL 0x1000 /* License is enabled for virtual machine use */
#define LMX_SHARE_SINGLE  0x2000 /* License is shared by a single session (local licensing only) */

#define LMX_MAX_BORROW_HOURS 8760 /* 365 days * 24 hours */

#define LMX_MAX_GRACE_HOURS 168 /* 7 days * 24 hours */

#define LMX_MAX_TOKEN_DEPENDENCIES 512
#define LMX_MAX_TOKEN_LOOPS 16

#define LMX_NO_VERSION_RESTRICTION 0

/* Used with LMX_FEATURE_INFO structure */
typedef enum
{
  LMX_TYPE_LOCAL   = 0, /* Normal local license */
  LMX_TYPE_NETWORK = 1, /* Networked license */
  LMX_TYPE_BORROW  = 2, /* Borrowed local license */
  LMX_TYPE_GRACE   = 3, /* Grace local license */
  LMX_TYPE_TRIAL   = 4 /* Trial local license */
} LMX_LICENSE_TYPE;

typedef enum
{
  LMX_CLIENT_HOSTID, /* Feature will be locked to client */
  LMX_SERVER_HOSTID  /* Feature will be locked to license server */
} LMX_KEY_HOSTID_TYPE;

/* Specified if a network license is additive or exclusive */
typedef enum
{
  LMX_KEYTYPE_EXCLUSIVE,
  LMX_KEYTYPE_ADDITIVE,
  LMX_KEYTYPE_TOKEN,
  LMX_KEYTYPE_UNKNOWN
} LMX_KEYTYPE;

typedef enum
{
  LMX_HAL_UNKNOWN = -1,
  LMX_HAL_NONE = 0,
  LMX_HAL_PRIMARY = 1,
  LMX_HAL_SECONDARY = 2,
  LMX_HAL_TERTIARY = 3
} LMX_HAL_STATUS;

/* Used with set option to specify the license source types to try */
typedef enum
{
  LMX_LICENSE_SOURCE_ALL = 0, /* Try all license sources    */
  LMX_LICENSE_SOURCE_NETWORK, /* Try network, borrow, grace */
  LMX_LICENSE_SOURCE_LOCAL,   /* Try string, file, trial    */
  LMX_LICENSE_SOURCE_TRIAL    /* Try trial only             */
} LMX_LICENSE_SOURCE;

typedef enum
{
  LMX_LICENSE_PATH_SOURCE_UNKNOWN = 0, /* license path came from unknown source  */
  LMX_LICENSE_PATH_SOURCE_ENV,         /* license path came from env variable    */
  LMX_LICENSE_PATH_SOURCE_USER,        /* license path was set via LMX_SetOption */
  LMX_LICENSE_PATH_SOURCE_DEFAULT      /* license path was added as a default    */ 
} LMX_LICENSE_PATH_SOURCE;

typedef enum
{
  LMX_HB_EXIT_UNKNOWN = 0,
  LMX_HB_EXIT_DISCONNECTED,
  LMX_HB_EXIT_EXPIRED,
  LMX_HB_EXIT_ALAS_REVOKED,
  LMX_HB_EXIT_ALAS_OFFLINE_EXPIRED
} LMX_HB_EXIT_REASON;

/* Used with set option to specify the requested level of ALAS verification at CO */
typedef enum
{
  LMX_CO_ALAS_VERIFY_QUICK = 0,         /* Do minimal verification at CO based on last known state */
  LMX_CO_ALAS_VERIFY_QUICK_NO_FIRST_RUN,/* Do minimal verification at CO based on last known state, dont give first run grace */
  LMX_CO_ALAS_VERIFY_FULL,              /* Do a full network check with ALAS for each checkout */
  LMX_CO_ALAS_VERIFY_FULL_NO_FIRST_RUN, /* Do a full network check with ALAS for each checkout, dont give first run grace */
  LMX_CO_ALAS_VERIFY_NONE               /* Do no ALAS verification at checkout */
} LMX_CO_ALAS_VERIFY_LEVEL;

typedef enum
{
  LMX_TRIAL_STATUS_UNKNOWN = 0,
  LMX_TRIAL_STATUS_ELIGIBLE,
  LMX_TRIAL_STATUS_ACTIVE,
  LMX_TRIAL_STATUS_EXPIRED,
  LMX_TRIAL_STATUS_NO_VIRTUAL,
  LMX_TRIAL_STATUS_NO_TERMINAL,
} LMX_TRIAL_STATUS;

/* This is deprecated since we use FeatureName instead FeatureChecksum */
#ifdef _WIN32
typedef unsigned __int64 LMX_FEATURE_CHECKSUM;
#else
typedef unsigned long long LMX_FEATURE_CHECKSUM;
#endif

typedef struct _LMX_INSTANCE
{
  unsigned char P[LMX_MAX_LONG_STRING_LENGTH];
  int __agj_rrqqddijfbvlrdieevigpuckfpftmyii;
  int __agj_uqzisdgjvhcxilyuzyngslpigobqhzpq;
  int __agj_xncsporjtwbvivrmsbubuftizyshcztj;
  int L;
  int __agj_znzflfwzgfspzbfnyujbueinrocpnwwv;
  int __agj_oyxxdxwpwogfmxjjrieqgvaqwudcksge;
  unsigned char SK[LMX_MAX_SHORT_STRING_LENGTH];
  int __agj_xgelajzpzadnsvnweoyzqoshvqivsjax;
  int __agj_vkamijkiwrdkxekjwdtxqdqvqpfvghvo;
} LMX_INSTANCE;

typedef enum _LMX_SUCCESS
{
  LMX_SUCCESS = 0, /* Operation successful */
  LMX_UNKNOWN_ERROR = 1, /* Unknown error occurred */
  LMX_INVALID_PARAMETER = 2, /* Invalid input parameter */
  LMX_NO_NETWORK = 3, /* Unable to initialize network subsystem */
  LMX_BAD_LICFILE = 4, /* License file is using unknown/invalid syntax */
  LMX_NO_MEMORY = 5, /* No more available memory */
  LMX_FILE_READ_ERROR = 6, /* Unable to read file */
  LMX_BAD_DATE = 7, /* Invalid date */
  LMX_BAD_KEY = 8, /* Invalid license key */
  LMX_FEATURE_NOT_FOUND = 9, /* Feature not found */
  LMX_BAD_HOSTID = 10, /* HostID does not match license */
  LMX_TOO_EARLY_DATE = 11, /* Software activation date is not yet reached */
  LMX_TOO_LATE_DATE = 12, /* Software expired */
  LMX_BAD_VERSION = 13, /* Software version does not match license */
  LMX_NETWORK_ERROR = 14, /* Unexpected network-related error occurred */
  LMX_NO_NETWORK_HOST = 15, /* Unable to connect to license server */
  LMX_NETWORK_DENY = 16, /* Rejected actively from license server */
  LMX_NOT_ENOUGH_LICENSES = 17, /* Request for more licenses than available on license server */
  LMX_BAD_SYSTEMCLOCK = 18, /* System clock has been set back */
  LMX_TS_DENY = 19, /* Feature not allowed to run on terminal server clients */
  LMX_VIRTUAL_DENY = 20, /* Feature not allowed to run on a virtual machine */
  LMX_BORROW_TOO_LONG = 21, /* The specified borrow period is too long */
  LMX_FILE_SAVE_ERROR = 22, /* Unable to save file */
  LMX_ALREADY_BORROWED = 23, /* Feature already borrowed */
  LMX_BORROW_RETURN_ERROR = 24, /* Unable to return borrowed feature */
  LMX_SERVER_BORROW_ERROR = 25, /* Deprecated. License server returned borrow error */
  LMX_BORROW_NOT_ENABLED = 26, /* Borrow functionality not enabled on client side */
  LMX_NOT_BORROWED = 27, /* The feature that was attempted to be returned was not borrowed */
  LMX_DONGLE_ERROR = 28, /* Dongle is not attached or does not function correctly */
  LMX_SOFTLIMIT = 29, /* Request exceeds the number of softlimit licenses available */
  LMX_BAD_PLATFORM = 30, /* Platform not permitted by license */
  LMX_TOKEN_LOOP = 32, /* Infinite token loop detected */
  LMX_BLACKLIST = 33, /* Feature is blacklisted */
  LMX_VENDOR_DENY = 34, /* Feature checkout rejected by vendor-defined rules */
  LMX_NOT_NETWORK_FEATURE = 35, /* Unable to use local license as a network license */
  LMX_BAD_TIMEZONE = 36, /* Checkout is not permitted in the client time zone */
  LMX_SERVER_NOT_IN_USE = 37, /* License server is not currently in use */
  LMX_NOT_IMPLEMENTED = 40, /* Functionality not implemented */
  LMX_BORROW_LIMIT_EXCEEDED = 41, /* License server limitation on number of borrowed features exceeded */
  LMX_SERVER_FUNC_ERROR = 42, /* License server function error occurred */
  LMX_HEARTBEAT_LOST_LICENSE = 43, /* License is lost due to heartbeat failure */
  LMX_SINGLE_LOCK = 44, /* Unable to obtain single-usage lock */
  LMX_AUTH_ERROR = 45, /* Cannot authenticate user on license server */
  LMX_NETWORK_SEND_ERROR = 46, /* Error sending message over network */
  LMX_NETWORK_RECEIVE_ERROR = 47, /* Error receiving message over network */
  LMX_QUEUE = 48, /* Feature has been queued */
  LMX_BAD_SECURITY_CONFIG = 49, /* LM-X security configuration file mismatch */
  LMX_FEATURE_HAL_MISMATCH = 50, /* Feature has different HAL settings than other features on the same license server */
  LMX_NOT_LOCAL_FEATURE = 51, /* Unable to use network license as a local license */
  LMX_FEATURE_NOT_REPLACEABLE = 52, /* Unable to replace missing feature */
  LMX_HOSTID_NOT_AVAILABLE = 53, /* HostID is not available on the current machine */
  LMX_FEATURE_ALREADY_RESERVED = 54, /* Feature is already reserved */
  LMX_FEATURE_ALREADY_CHECKED_OUT = 55, /* Feature is already checked out */
  LMX_RESERVATION_NOT_FOUND = 56, /* Reservation not found */
  LMX_API_NOT_REENTRANT = 57, /* Calling an API function from a callback function is not allowed  */
  LMX_LICENSE_UPLOAD_ERROR = 58, /* Problem with license file upload */
  LMX_INTERNAL_LICENSE_NOT_EMBEDDED = 59, /* Internal LM-X license file is not embedded */
  LMX_NET_FD_OVERRUN = 60, /* too many FD's are open and further operations could cause undefined behavior */
  LMX_ATOMIC_ERROR = 61, /* Error during atomic operation */
  LMX_ROGUE_SERVER = 62, /* Error during atomic heartbeat */
  LMX_SYSTEM_INTERPROCESS = 63, /* Interprocess resource locking error */
  LMX_CANNOT_LOAD_SHARED_LIBRARY = 64, /* Cannot load shared library */
  LMX_MALFORMED_SERVER = 65, /* malformed SERVER line in license file */
  LMX_REVOKED = 66, /* License has been revoked */
  LMX_OFFLINE_EXPIRED = 67, /* ALAS offline period expired */
  LMX_ALAS_FIRST_RUN = 68, /* ALAS first run with no server connection */
  LMX_QUEUE_INSERT = 128, /* Internal */
  LMX_QUEUE_ALREADY = 129, /* Internal */
  LMX_RESERVE = 130, /* Internal */
  LMX_LIMIT = 131/* Internal */
} LMX_STATUS;

typedef enum _LMX_HOSTID_TYPE
{
  LMX_HOSTID_ETHERNET,
  LMX_HOSTID_USERNAME,
  LMX_HOSTID_HOSTNAME,
  LMX_HOSTID_IPADDRESS,
  LMX_HOSTID_CUSTOM,
  LMX_HOSTID_DONGLE_HASPHL,
  LMX_HOSTID_HARDDISK,
  LMX_HOSTID_LONG,
  LMX_HOSTID_BIOS,
  LMX_HOSTID_WIN_PRODUCT_ID,
  LMX_HOSTID_WIN_INSTALL_ID,
  LMX_HOSTID_AWS_INSTANCE_ID,
  LMX_HOSTID_GCE_INSTANCE_ID,
  LMX_HOSTID_AZURE_INSTANCE_ID,
  LMX_HOSTID_OCI_INSTANCE_ID,
  LMX_HOSTID_UNKNOWN,
  LMX_HOSTID_ALL
} LMX_HOSTID_TYPE;

typedef enum _LMX_SETTINGS
{
  LMX_OPT_EXACT_VERSION,
  LMX_OPT_LICENSE_PATH,
  LMX_OPT_CUSTOM_HOSTID_FUNCTION,
  LMX_OPT_HOSTID_COMPARE_FUNCTION,
  LMX_OPT_HEARTBEAT_CHECKOUT_FAILURE_FUNCTION,
  LMX_OPT_HEARTBEAT_CHECKOUT_SUCCESS_FUNCTION,
  LMX_OPT_HEARTBEAT_RETRY_FEATURE_FUNCTION,
  LMX_OPT_HEARTBEAT_CONNECTION_LOST_FUNCTION,
  LMX_OPT_HEARTBEAT_EXIT_FUNCTION,
  LMX_OPT_HEARTBEAT_CALLBACK_VENDORDATA,
  LMX_OPT_ALLOW_BORROW,
  LMX_OPT_ALLOW_GRACE,
  LMX_OPT_TRIAL_DAYS,
  LMX_OPT_TRIAL_USES,
  LMX_OPT_TRIAL_VIRTUAL_MACHINE,
  LMX_OPT_TRIAL_TERMINAL_SERVER,
  LMX_OPT_AUTOMATIC_HEARTBEAT_ATTEMPTS,
  LMX_OPT_AUTOMATIC_HEARTBEAT_INTERVAL,
  LMX_OPT_CUSTOM_SHARE_STRING,
  LMX_OPT_LICENSE_STRING,
  LMX_OPT_SERVERSIDE_REQUEST_STRING,
  LMX_OPT_LICENSE_IDLE,
  LMX_OPT_CUSTOM_USERNAME,
  LMX_OPT_CUSTOM_HOSTNAME,
  LMX_OPT_BLACKLIST,
  LMX_OPT_ALLOW_MULTIPLE_SERVERS,
  LMX_OPT_HOSTID_CACHE_CLEANUP_INTERVAL,
  LMX_OPT_RESERVATION_TOKEN,
  LMX_OPT_BIND_ADDRESS,
  LMX_OPT_CLIENT_HOSTIDS_TO_SERVER,
  LMX_OPT_HOSTID_ENABLED,
  LMX_OPT_HOSTID_DISABLED,
  LMX_OPT_BORROW_HOURS,
  LMX_OPT_LICENSE_SOURCE,
  LMX_OPT_PROXY_HOST,
  LMX_OPT_PROXY_PORT,
  LMX_OPT_PROXY_USERNAME,
  LMX_OPT_PROXY_PASSWORD,
  LMX_OPT_PROXY_SYSTEM,
  LMX_OPT_CO_ALAS_VERIFY_LEVEL
} LMX_SETTINGS;

typedef enum _ALAS_HB_STATUS
{
    ALAS_OK,
    ALAS_REVOKED,
    ALAS_ERROR,
    ALAS_SOAP_ERROR,
    ALAS_DISABLED,
    ALAS_OFFLINE_EXPIRED,
    ALAS_OFFLINE,
    ALAS_FIRST_RUN,
    ALAS_FAILED_TO_GET_LOCK
} ALAS_HB_STATUS;

typedef struct _LMX_TOKEN_DEPENDENCY
{
  char szFeatureName[LMX_MAX_NAME_LENGTH+1];

  int nMajorVer;
  int nMinorVer;

  int nLicCount;

  struct _LMX_TOKEN_DEPENDENCY *pNext;
} LMX_TOKEN_DEPENDENCY;

typedef struct _LMX_DYNAMIC_RESERVATION
{
  char szToken[LMX_MAX_SHORT_STRING_LENGTH+1];

  time_t tActualExpireTime;

  int nLicCount;

  int nStartingLicCount;

  struct _LMX_DYNAMIC_RESERVATION *pNext;
} LMX_DYNAMIC_RESERVATION;

typedef struct _LMX_HOSTID
{
  LMX_HOSTID_TYPE eHostidType; /* Type of HostID; e.g. HOSTID_ETHERNET */

  char szDescription[LMX_MAX_SHORT_STRING_LENGTH+1]; /* Description of HostID */

  char szValue[LMX_MAX_SHORT_STRING_LENGTH+1]; /* HostID value  */

  /* This is deprecated, because we use decrypted HostID */
  unsigned char sValue[LMX_MAX_SHORT_STRING_LENGTH]; /* HostID value as raw bytes */
  int nLength; /* Length of the raw bytes */

  int nInternal; /* For internal use only. Do not use this value. */

} LMX_HOSTID;

typedef struct _LMX_FEATURE_INFO
{
  /* These strings contain the feature name and vendor name. */
  char szFeatureName[LMX_MAX_NAME_LENGTH+1];
  char szVendorName[LMX_MAX_NAME_LENGTH+1];

  /* These strings contain the start and expire date in format "YYYY-MM-DD".
     If no limitations are set, the strings will be empty.
  */
  char szStartDate[LMX_MAX_SHORT_STRING_LENGTH+1];
  char szEndDate[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This string contains the actual license expire time in format "YYYY-MM-  DD HH:MM".
  If a borrow, grace or trial license is in use, that is the expiration   time returned.
  Otherwise, the expiration time of the local or network license is   returned.
  */
  char szActualExpireTime[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* These strings contain the start and expire date for optional maintenance   in the format "YYYY-MM-DD".
  If no limitations are set, the strings will be empty.
  */
  char szMaintenanceStartDate[LMX_MAX_SHORT_STRING_LENGTH+1];
  char szMaintenanceEndDate[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This string contains the license issue date in the format "YYYY-MM-DD" if   specified in the license.
  */
  char szIssuedDate[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field contains the platforms the license can be used with. */
  char szPlatforms[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field contains the COMMENT string content of the license. */
  char szComment[LMX_MAX_FIELD_LENGTH+1];

  /* This field contains the DATA string content of the license. */
  char szData[LMX_MAX_FIELD_LENGTH+1];

  /* This field contains the LICENSEE string content of the license. */
  char szLicensee[LMX_MAX_FIELD_LENGTH+1];

  /* This field contains the string content embedded within the KEY field. */
  char szKeyComment[LMX_MAX_FIELD_LENGTH+1];

  /* This field contains the string content embedded within the OPTIONS field. */
  char szOptions[LMX_MAX_FIELD_LENGTH+1];

  /* This field contains the string content embedded within the SN field. */
  char szSN[LMX_MAX_FIELD_LENGTH+1];

  /* This field contains the KEY signature of the license. */
  char szKey[LMX_MAX_FIELD_LENGTH+1];

  /* This integer contains the number of licenses available on the license server:
     -1 - Unlimited network licenses (same as LMX_UNLIMITED_COUNT)
     0 - Local licenses
     1 - 2147483647 - Normal network licenses (same as LMX_MIN_COUNT to LMX_MAX_COUNT)
  */
  int nAvailableLicCount;

  /* This integer contains the number of licenses taken from the license server for the
  particular feature. The number is within the range LMX_MIN_COUNT to LMX_MAX_COUNT.
  */
  int nUsedLicCount;

  /* This integer contains major and minor version numbers.
  Note that for trial licenses these numbers will both be zero regardless of the version
  specified in your checkout.
  */
  int nMajorVer;
  int nMinorVer;

  /* This integer contains the soft limit for the specific feature.
  This is only available for network licenses and must be less than the count of available licenses.
  */
  int nSoftLimit;

  /* This integer contains the type of sharing in use for the specific feature.
  This flag can be set to LMX_SHARE_HOST, LMX_SHARE_USER, LMX_SHARE_CUSTOM and/or LMX_SHARE_VIRTUAL
  for network licenses, and LMX_SHARE_TS for local licenses.
  If there is no sharing in use, this flag is set to LMX_SHARE_NONE.

  To test whether a specific type of sharing is enabled, use the following (this example checks
  whether host sharing is enabled):

     if (FI.nShareCode & LMX_SHARE_HOST)
  */
  int nShareCode;

  /* This contains the license type, as follows:
  It can contain LMX_TYPE_LOCAL, LMX_TYPE_NETWORK, LMX_TYPE_BORROW, LMX_TYPE_GRACE or LMX_TYPE_TRIAL.
  Note that trial licenses have substantially less information available than other
  license types, and these fields will be zero or empty.
  */
  LMX_LICENSE_TYPE eLicenseType;

  /* This integer contains the keytype which can be either LMX_KEYTYPE_EXCLUSIVE,
  LMX_KEYTYPE_ADDITIVE or LMX_KEYTYPE_TOKEN.
  */
  LMX_KEYTYPE eKeyType;

  /* This field contains the path for the license, which will be one of the following:
     - The hostname for a network license
     - The path to the license file for a local license
     - "Embedded" for license checkout from a string
     - "Securestore" for a borrow, trial or grace license.
  */
  char szPath[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field contains the port number used by the license server.
     It is set only when eLicenseType is LMX_TYPE_NETWORK.
  */
  int nServerPort;

  /* These fields contain information about how many and which HostIDs the
  feature is bound to.
     - If nClientLicenseHostid is 0, the application is not locked to client host.
     - If nServerLicenseHostid is 0, the application is not locked to license server.
  */
  int nClientLicenseHostids;
  int nServerLicenseHostids;
  LMX_HOSTID ClientLicenseHostid[LMX_MAX_HOSTIDS];
  LMX_HOSTID ServerLicenseHostid[LMX_MAX_HOSTIDS];

  /* These integers contain information about the number of hold seconds, borrow hours, grace hours
     and minimum checkout seconds set for the feature in the license.
  */
  int nHoldSeconds;
  int nMinCheckoutSeconds;
  int nBorrowHours;
  int nGraceHours;

  /* This integer contains information about the actual number of borrow hours, which
  may be restricted by an administrator on the license server.
  If no restrictions are set, then this will be the value specified by the license.
  */
  int nActualBorrowHours;

  /* This string can be used to identify a unique issued license.
  You can use this information to track specific licenses or for blacklisting.

  A unique license is identified by the feature name and this string, for example:
     {F2, 12345678901234567890}
  */
  char szUniqueID[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This integer contains information about whether a system clock check has been performed.
  For standalone licenses, this applies to the license client. For network applications,
  this applies to the license server, but not the license client.

  Possible values are:
     1 - Enabled
     0 - Disabled
  */
  int nSystemClockCheck;

   /* This integer contains the HostID matching rate as specified by the license.

   Possible values are 0 - 100.
  */
  int nHostidLicenseMatchRate;

  /* This integer contains the actual HostID matching performed at checkout.
  Using this information, you can see the results of the actual HostID verification.

  Possible values are 0 - 100.
  */
  int nHostidActualMatchRate;

  /* This integer contains the user-based reservation count required for the license.
  Possible values are:
     -1 The user-based reservation count is applied to all licenses. Use integer nAvailableLicCount.
     0 Disabled
     >0 Specific number of licenses that are required to be reserved
  */
  int nUserBasedCount;

  /* This integer contains the host-based reservation count required for the license.
  Possible values are:
     -1 The host-based reservation count is applied to all licenses. Use integer nAvailableLicCount.
     0 Disabled
     >0 Specific number of licenses that are required to be reserved.
  */
  int nHostBasedCount;

  /* This array of integers contains the allowed time zones relative to GMT.
  E.g., an entry of "-5" specifies the timezone GMT -5.
  If the array is empty, all time zones are allowed.
  */
  int sTimeZones[LMX_MAX_SHORT_STRING_LENGTH];
  int nTimeZonesCount;

  /* This integer contains the number of possible uses for trial licenses.
  Default value is -1, which means that trial uses is not set.
  */
  int nTrialUses;

  /* This integer contains information about whether a license has been blacklisted.
  Possible values are:
     1 - Enabled
     0 - Disabled
  */
  int nBlacklisted;

  /* This integer contains the ALAS License ID.  0 means the value is unset */
  int nLicenseId;

  /* This integer contains the number of days allowed between heartbeats to ALAS.  
  0 means the the feature is disabled */
  int nOfflineDays;

  /* This integer contains the final requested count (after serverside manipulation)
  of the last checkout */
  int nLastCOFinalReqLicCount;

  /* Pointer to the token dependencies of the feature.
  This is always set to NULL when using LMX_GetFeatureInfo. You can use
  LMX_GetLicenseInfo to obtain token dependencies for token-based features.
  */
  LMX_TOKEN_DEPENDENCY *pTokenDependency;

  /* Pointer to the reservations made for the feature.
  This is always set to NULL when using LMX_GetFeatureInfo. You can use
  LMX_GetLicenseInfo to obtain proper license reservation information.
  */
  LMX_DYNAMIC_RESERVATION *pReservations;

  struct _LMX_FEATURE_INFO *pNext;
} LMX_FEATURE_INFO;

/* ALTAIR - Atomic checkout list */
typedef void LMX_FEATURE_REQ_LIST;

typedef enum _LMX_FEATURE_SETTING
{
	LMX_FEATURE_SET_RES_TIME = 1,
	LMX_FEATURE_SET_RES_TOKEN,
	LMX_FEATURE_SET_SHARE_STR,
	LMX_FEATURE_SET_SSREQ_STR,
	LMX_FEATURE_GET_FEATURE_NAME,
	LMX_FEATURE_GET_SHARE_STR,
	LMX_FEATURE_GET_SSREQ_STR,
	LMX_FEATURE_GET_MAJOR_VER,
	LMX_FEATURE_GET_MINOR_VER,
	LMX_FEATURE_GET_LIC_COUNT,
	LMX_FEATURE_GET_RES_TIME,
	LMX_FEATURE_GET_RES_TOKEN,
	LMX_FEATURE_GET_STATUS,
	LMX_FEATURE_GET_FINAL_LIC_COUNT
} LMX_FEATURE_SETTING;

typedef struct _LMX_CLIENT_QUEUE
{
  /* This field contains the feature name. */
  char szFeatureName[LMX_MAX_NAME_LENGTH+1];

  /* This field contains the number of queued licenses. */
  int nQueueCount;

  /* This field contains the time that the request entered the queue. */
  char szQueueTime[LMX_MAX_SHORT_STRING_LENGTH+1];

  struct _LMX_CLIENT_QUEUE *pNext;
} LMX_CLIENT_QUEUE;

typedef struct _LMX_CLIENT_LEASE
{
  /* This field contains the feature name. */
  char szFeatureName[LMX_MAX_NAME_LENGTH+1];

  /* This field contains the unique license identifier. */
  char szUniqueID[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field contains the number of licenses leased. */
  int nLeaseCount;

  /* This field contains the checkout time of the particular
     license, in the format YYYY-MM-DD.
  */
  char szCheckoutTime[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field contains the borrow expiration time of the
     particular license. If this field is set, the license is
     borrowed and unavailable on the server for the specified time period. */
  char szBorrowExpireTime[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* These fields contain the license sharing settings.
     If license sharing is used, these fields specify
     the username, hostname and/or custom string with which
     the license is shared.
  */
  char szShareUsername[LMX_MAX_SHORT_STRING_LENGTH+1];
  char szShareHostname[LMX_MAX_SHORT_STRING_LENGTH+1];
  char szShareCustom[LMX_MAX_SHORT_STRING_LENGTH+1];

  /*This field contains the project name for which the feature was checked out. */
  char szProjectName[LMX_MAX_SHORT_STRING_LENGTH+1];

  struct _LMX_CLIENT_LEASE *pNext;
} LMX_CLIENT_LEASE;

typedef struct _LMX_CLIENT_DENIAL
{
  /* This field contains the feature name. */
  char szFeatureName[LMX_MAX_NAME_LENGTH+1];

  /* This field contains the unique license identifier. */
  char szUniqueID[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field contains the number of licenses denied. */
  int nDenialsCount;

  /* This field contains the denial time of the particular
     license, in the format YYYY-MM-DD.
  */
  char szDenialTime[LMX_MAX_SHORT_STRING_LENGTH+1];

  struct _LMX_CLIENT_DENIAL *pNext;
} LMX_CLIENT_DENIAL;

typedef struct _LMX_CLIENT_USER
{
  /* These fields indicate who the user is. */
  char szIP[LMX_MAX_SHORT_STRING_LENGTH+1];
  char szUsername[LMX_MAX_SHORT_STRING_LENGTH+1];
  char szHostname[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field indicates when the user logged into the license server, in the
     format YYYY-MM-DD.
  */
  char szLoginTime[LMX_MAX_SHORT_STRING_LENGTH+1];

  LMX_CLIENT_LEASE *pLease;
  LMX_CLIENT_QUEUE *pQueue;
  LMX_CLIENT_DENIAL *pDenial;

  struct _LMX_CLIENT_USER *pNext;
} LMX_CLIENT_USER;

typedef struct _LMX_LICENSE_PATH
{
  /* This field indicates the license type which can be either LMX_TYPE_LOCAL or LMX_TYPE_NETWORK. */
  LMX_LICENSE_TYPE eLicenseType;

  /* This field indicates the path and name of the license file (for local licenses)
     or license server host name (for network licenses). */
  char szPath[LMX_MAX_LONG_STRING_LENGTH+1];

  /* This field indicate port number of the server. */
  int nPort;

  /* This field indicates the source of the path element */
  LMX_LICENSE_PATH_SOURCE eSource;

  struct _LMX_LICENSE_PATH *pNext;
} LMX_LICENSE_PATH;

typedef struct _LMX_LICENSE_INFO
{
  /* This field indicates the license type which can be either LMX_TYPE_LOCAL or LMX_TYPE_NETWORK. */
  LMX_LICENSE_TYPE eLicenseType;

  /* This field indicates the path and name of the license file (for local licenses)
     or license server host name (for network licenses). */
  char szPath[LMX_MAX_LONG_STRING_LENGTH+1];

  /* This field indicates the status of the license path.
     If this is not LMX_SUCCESS then all remaining information in LMX_LICENSE_INFO
     or related structures cannot be assumed valid.
  */
  LMX_STATUS LmxStat;

  /* The following fields only applies to license servers. For local licenses they are set empty or zero. */

  /* These fields indicate the hostname and port number of the server. */
  int nPort;

  /* This field indicates the vendor name. */
  char szVendorName[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field indicates the version of the license server. */
  char szVersion[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field indicates the version of the license server vendor lib. */
  char szVendorVersion[LMX_MAX_SHORT_STRING_LENGTH+1];

  /* This field indicates the uptime of the license server. */
  int nServerUptimeSeconds;

  /* This field indicates the HAL status of the license server. */
  LMX_HAL_STATUS eHALStatus;

  /* Pointers to which features and users are present on the license server. */
  LMX_FEATURE_INFO *pFeature;
  LMX_CLIENT_USER *pUser;

  struct _LMX_LICENSE_INFO *pNext;
} LMX_LICENSE_INFO;

typedef struct _LMX_ERROR_INFO
{
  /* This field indicates the status. */
  LMX_STATUS LmxStat;

  /* This field indicates the line number where the error occurred. */
  int nInternal;

  /* This field indicates the error code returned by LDS. */
  int nContext;

  /* This field indicates error description. */
  char szDescription[2 * LMX_MAX_LONG_STRING_LENGTH+1];

  /* This field contains the feature name. */
  char szFeatureName[LMX_MAX_NAME_LENGTH+1];

} LMX_ERROR_INFO;

typedef struct _LMX_ALAS_INFO
{
  /* This field indicates the license id */
  int nLicenseId;

  /* This integer contains the number of days allowed between heartbeats to ALAS.  
  0 means the feature is disabled */
  int nOfflineDays;

  /* This integer contains the number of seconds remining in offline grace period.  
  0 if not currently in a grace period */
  int nOfflineRemaining;

  /* This field indicates the current state of ALAS for this license */
  ALAS_HB_STATUS eState;

  /* This field indicates the time of the last successful heartbeat */
  time_t tLastHeartbeat;

  /* This field indicates error description. */
  char szErrorString[2 * LMX_MAX_LONG_STRING_LENGTH+1];

  /* This field indicates the status of the last HB attempt */
  ALAS_HB_STATUS eHeartbeatRet;

  struct _LMX_ALAS_INFO *pNext;
} LMX_ALAS_INFO;

typedef struct _LMX_TRIAL_INFO
{
  /* This field indicates the status of the trial */
  LMX_TRIAL_STATUS eTrialStatus;

  /* This field contains the feature name. */
  char szFeatureName[LMX_MAX_NAME_LENGTH+1];

  /* This integer contains major and minor version numbers for this trial license.
     This may not be the requested version as the license will match if >= requested
  */
  int nMajorVer;
  int nMinorVer;

  /* This field indicates the number of full days remaining in the trial */
  int nDaysRemaining;

  /* This integer contains the number of seconds remining in the trial */
  int nSecsRemaining;

  /* This string contains the actual license expire time in format "YYYY-MM-  DD HH:MM".*/
  char szActualExpireTime[LMX_MAX_SHORT_STRING_LENGTH+1];

  struct _LMX_ALAS_INFO *pNext;
} LMX_TRIAL_INFO;

#ifdef _WIN32
#define LMX_CALLBACK __stdcall
#else
#define LMX_CALLBACK
#endif

LMX_STATUS LMX_CALLBACK LMX_Hostid_DongleHaspHL(LMX_HOSTID *pHostid, int *npHostids);

/* Custom HostID callback */
typedef LMX_STATUS (LMX_CALLBACK *CustomHostidCallBack_pfn)(LMX_HOSTID *pHostid, int *npHostids);

/* HostID compare callback for relaxed HostID checking */
typedef LMX_STATUS (LMX_CALLBACK *HostidCompareCallBack_pfn)(LMX_KEY_HOSTID_TYPE eKeyHostidType,
                                                             const LMX_HOSTID pLicenseHostid[], int nLicenseHostids,
                                                             const LMX_HOSTID pSystemHostid[], int nSystemHostids);
/* Connection to server lost */
typedef void (LMX_CALLBACK *HeartbeatConnectionLost_pfn)(void *pVendorData, const char *szHost, int nPort, int nFailedHeartbeats);
/* Feature lost */
typedef void (LMX_CALLBACK *HeartbeatCheckoutFailure_pfn)(void *pVendorData, const char *szFeatureName, int nUsedLicCount, LMX_STATUS LmxStat);
/* Feature regained */
typedef void (LMX_CALLBACK *HeartbeatCheckoutSuccess_pfn)(void *pVendorData, const char *szFeatureName, int nUsedLicCount);
/* About to retry regaining feature */
typedef void (LMX_CALLBACK *HeartbeatRetryFeature_pfn)(void *pVendorData, const char *szFeatureName, int nUsedLicCount);
/* Exit rutine */
typedef void (LMX_CALLBACK *HeartbeatExit_pfn)(void *pVendorData, LMX_HB_EXIT_REASON reason);

LMX_STATUS LMX_Init(LMX_HANDLE *pLmxHandle);
void LMX_Free(LMX_HANDLE LmxHandle);

void LMX_HeapFree(void* ptr);
void* LMX_HeapCalloc(size_t count, size_t size);
void* LMX_HeapMalloc(size_t size);
void* LMX_HeapRealloc(void *ptr, size_t size);

int LMX_GetVersion();

/* This function is deprecated and left for backwards compatibility only. */
LMX_FEATURE_CHECKSUM LMX_GetFeatureChecksum(const char *szFeatureName);

/* Undocumented macro to shorten the name of the function.
   It is deprecated and should not be used.*/
#define LMX_FC(x) x

LMX_STATUS LMX_Checkout(LMX_HANDLE LmxHandle, const char *szFeatureName,
                        int nVerMajor, int nVerMinor, int nCount);

LMX_STATUS LMX_Checkin(LMX_HANDLE LmxHandle, const char *szFeatureName, int nCount);

LMX_STATUS LMX_SetOption(LMX_HANDLE LmxHandle, LMX_SETTINGS eOption, const void *pSetting);

LMX_STATUS LMX_Putenv(const char *szEnvironmentVariable);

const char *LMX_GetErrorMessage(LMX_HANDLE LmxHandle);
const char *LMX_GetErrorMessageSimple(LMX_STATUS LmxStat);

const LMX_ERROR_INFO *LMX_GetError(LMX_HANDLE LmxHandle);

LMX_STATUS LMX_Hostid(LMX_HANDLE LmxHandle, LMX_HOSTID_TYPE eHostidType, LMX_HOSTID *lpHostid, int *npHostids);
LMX_STATUS LMX_HostidSimple(LMX_HANDLE LmxHandle, LMX_HOSTID_TYPE eHostidType, char *szHostid);

LMX_STATUS LMX_Heartbeat(LMX_HANDLE LmxHandle, const char *szFeatureName);

LMX_STATUS LMX_GetFeatureInfo(LMX_HANDLE LmxHandle, const char *szFeatureName,
                              LMX_FEATURE_INFO *pFI);

int LMX_GetExpireTime(LMX_HANDLE LmxHandle, const char *szFeatureName);

LMX_STATUS LMX_ServerLog(LMX_HANDLE LmxHandle, const char *szFeatureName, const char *szMessage);

LMX_STATUS LMX_ServerFunction(LMX_HANDLE LmxHandle, const char *szFeatureName, char *szMessage);

LMX_STATUS LMX_ClientStoreSave(LMX_HANDLE LmxHandle, const char *szVirtualFilename, const char *szString);
LMX_STATUS LMX_ClientStoreLoad(LMX_HANDLE LmxHandle, const char *szVirtualFilename, char *szString);

LMX_STATUS LMX_GetBorrowLicenseInfo(LMX_HANDLE LmxHandle, LMX_LICENSE_INFO **ppLicenseInfo);

LMX_STATUS LMX_GetLicenseInfo(LMX_HANDLE LmxHandle, LMX_LICENSE_INFO **ppLicenseInfo);

LMX_STATUS LMX_GetServerStatus(LMX_HANDLE LmxHandle, LMX_LICENSE_PATH* pServers, LMX_LICENSE_INFO **ppLicenseInfo);

LMX_LICENSE_PATH* LMX_GetLicensePath(LMX_HANDLE LmxHandle);

LMX_ALAS_INFO* LMX_GetALASInfo(LMX_HANDLE LmxHandle);

LMX_STATUS LMX_CheckTrialEligibility(LMX_HANDLE LmxHandle, const char *szFeatureName,
                                  int nVerMajor, int nVerMinor, LMX_TRIAL_INFO *pTI);

/* ALTAIR - Manhattan project */
LMX_STATUS LMX_CheckoutAtomic(LMX_HANDLE LmxHandle, LMX_FEATURE_REQ_LIST* req_head);

LMX_FEATURE_REQ_LIST* LMX_AddFeatureList(LMX_FEATURE_REQ_LIST* req_head, const char* szFeatureName, int nMajorVer, int nMinorVer, int nLicCount);

void LMX_PrintFeatureList(LMX_FEATURE_REQ_LIST* req_head);

LMX_FEATURE_REQ_LIST* LMX_DelFeatureList(LMX_FEATURE_REQ_LIST* req_head, const char* szFeatureName);

void LMX_FreeFeatureList(LMX_FEATURE_REQ_LIST* req_head);

int LMX_CountFeatureList(LMX_FEATURE_REQ_LIST* req_head);

LMX_STATUS LMX_SetFeatureListOption(LMX_FEATURE_REQ_LIST* req_head, const char* szFeatureName, LMX_FEATURE_SETTING eOption, const void *pSetting);

LMX_FEATURE_REQ_LIST* LMX_GetFeatureReqListNext(LMX_FEATURE_REQ_LIST* req_head, LMX_FEATURE_REQ_LIST* ctx);

void* LMX_GetFeatureReqListSetting(LMX_FEATURE_REQ_LIST* req, LMX_FEATURE_SETTING eSetting);

char** LMX_GetFeatureReqListNames(LMX_FEATURE_REQ_LIST* req_head);

#ifdef __cplusplus
}
#endif

#endif /* LMX_H */
