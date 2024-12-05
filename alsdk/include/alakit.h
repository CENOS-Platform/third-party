/***********************************************************************
Copyright (c) 2019 Altair Engineering, Inc. All rights reserved.

Contains trade secrets of Altair Engineering, Inc. Copyright notice
does not imply publication. Decompilation or disassembly of this
software is strictly prohibited.
***********************************************************************/

#ifndef ALAKIT_H
#define ALAKIT_H

#if defined __CPLUSPLUS__ || defined __cplusplus
extern "C" {
#endif

#include "lmx.h"
#include "netlibtoc.h"
#include <wchar.h>

#define ALAKIT_MAX_LONGNAME_SIZE 1024
#define ALAKIT_MAX_BUFFER_SIZE 4096
#define ALAKIT_MAX_USERNAME ALAKIT_MAX_LONGNAME_SIZE
#define ALAKIT_MAX_PASSWORD ALAKIT_MAX_LONGNAME_SIZE
#define ALAKIT_MAX_HOSTNAME ALAKIT_MAX_LONGNAME_SIZE
#define ALAKIT_MAX_TOKEN_LEN 32
#define ALAKIT_MAX_AUTH_CODE 1024

#define ALAKIT_MAX_LONG_STRING_LENGTH 2048
#define ALAKIT_MAX_ERROR_BUF ALAKIT_MAX_LONG_STRING_LENGTH * 2

#define ALAKIT_MAX_AUTH_HOSTNAME 100
#define ALAKIT_MAX_LICENSE_FILENAME 100
#define ALAKIT_MAX_ACTIVATION_KEY 40

#define ALAKIT_DEFAULT_PROXY_PORT 8080

#define ALAKIT_OPT void *) (uintptr_t

typedef enum {
  ALAKIT_SUCCESS = 0,
  ALAKIT_NO_MEMORY,
  ALAKIT_CANNOT_LOAD_SHARED_LIBRARY,
  ALAKIT_BAD_PARAM,
  ALAKIT_HHWU_CONFIG_READ_ERROR,
  ALAKIT_HHWU_CONFIG_WRITE_ERROR,
  ALAKIT_HHWU_NO_TOKEN,
  ALAKIT_HHWU_GENERIC_ERROR,
  ALAKIT_REJECTED,
  ALAKIT_NETWORK_ERROR,
  ALAKIT_MUST_BE_ADMIN,
  ALAKIT_INVALID_LIC_STORE,
  ALAKIT_CANNOT_ACCESS_LIC_STORE,
  ALAKIT_UNABLE_TO_DETECT_SERVER_DIR,
  ALAKIT_UNKNOWN_ERROR,
  ALAKIT_ERROR_GETTING_HOSTID,
  ALAKIT_ERROR_SUBMITTING_ACTIVATE_REQ,
  ALAKIT_ERROR_GETTING_LICENSE,
  ALAKIT_LICENSE_NOT_FOUND,
  ALAKIT_ERROR_READING_LICENSE,
  ALAKIT_UNABLE_TO_DETECT_LICENSE_ID,
  ALAKIT_UNABLE_TO_DETECT_ACTIVATION_KEY,
  ALAKIT_ERROR_WRITING_LIC_TO_DISK,
  ALAKIT_LICENSE_ALREADY_IN_STORE,
  ALAKIT_UNABLE_TO_REMOVE_DEACTIVATED_LIC,
  ALAKIT_NOT_A_LICENSE_FILE,
  ALAKIT_LMX_ERROR,
  ALAKIT_ERROR_DEACTIVATING_LICENSE,
  ALAKIT_URL_ERROR,
  ALAKIT_DNS_ERROR,
  ALAKIT_UNKNOWN_SERVICE,
  ALAKIT_SLOW_RESPONSE
} ALAKIT_STATUS;

typedef enum {
  ALAKIT_PROXY_HOST = 0,
  ALAKIT_PROXY_PORT,
  ALAKIT_PROXY_USERNAME,
  ALAKIT_PROXY_PASSWORD
} ALAKIT_PROXY_ENT;

typedef enum {
  ALAKIT_SOURCE_UNKNOWN = 0,
  ALAKIT_SOURCE_SOLIDTHINKING,
  ALAKIT_SOURCE_ALTAIR_ONE
} ALAKIT_AUTH_SOURCE;

typedef enum {
  ALAKIT_OPT_UNKNOWN = 0,
  ALAKIT_OPT_SYSTEM,
  ALAKIT_OPT_ANYHOST,
  ALAKIT_OPT_AUTH_HOST,
  ALAKIT_OPT_HHWU_AUTH_TOKEN,
  ALAKIT_OPT_CONFIG_READ_ONLY,
  ALAKIT_OPT_LEGACY_PROXY_CREDS,
  ALAKIT_OPT_SOURCE_NAME,
  ALAKIT_OPT_SERVER_STORE_PATH,
  ALAKIT_OPT_FORCE_WININET,
  ALAKIT_OPT_FORCE_NO_PROXY,
  ALAKIT_OPT_FORCE_TEST
} ALAKIT_OPTION;

typedef enum {
  ALAKIT_LIC_STORE_NONE = 0,
  ALAKIT_LIC_STORE_USER,
  ALAKIT_LIC_STORE_SYSTEM,
  ALAKIT_LIC_STORE_SERVER
} ALAKIT_LIC_STORE;

typedef enum {
  ALAKIT_CLOUD_SERVICE_NONE = 0,
  ALAKIT_CLOUD_SERVICE_HHWU_CLIENT,
  ALAKIT_CLOUD_SERVICE_HHWU_AUTH,
  ALAKIT_CLOUD_SERVICE_ALAS,
  ALAKIT_CLOUD_SERVICE_PORTAL
} ALAKIT_CLOUD_SERVICE;

#define ALAKIT_CLOUD_SERVICE_COUNT 4

typedef enum {
  ALAKIT_OUT_OPT_NONE = 0,
  ALAKIT_OUT_OPT_STDOUT,
  ALAKIT_OUT_OPT_FUNCTION_POINTER,
  ALAKIT_OUT_OPT_FILE_POINTER,
} ALAKIT_OUTPUT_OPTION;

typedef struct _ALAKitLicense {
  ALAKIT_LIC_STORE store;
  int license_id;
  char activation_key[ALAKIT_MAX_ACTIVATION_KEY+1];
  ALAS_HB_STATUS state;
  ALAS_HB_STATUS heartbeat_return;
  int offline_days;
  int offline_remaining;
  time_t last_heartbeat;
  char error_string[2 * LMX_MAX_LONG_STRING_LENGTH+1];
  struct _ALAKitLicense* next;
} ALAKitLicense;

typedef struct ALAKit ALAKit;
typedef struct _ALM_HOSTID ALM_HOSTID;

ALAKit* ALAKitInit(ALAKIT_STATUS* status);
void  ALAKitCleanup(ALAKit* handle);

const char* ALAKitGetErrorString(ALAKit* handle);
ALAKIT_STATUS ALAKitGetLastErrorCode(ALAKit* handle);

int ALAKitIsProxyConfigured(ALAKit* handle);
ALAKIT_STATUS ALAKitSetProxyEnt(ALAKit* handle, ALAKIT_PROXY_ENT entry, const void *value, int system);

ALAKIT_STATUS ALAKitSetOption(ALAKit* handle, ALAKIT_OPTION option, const void *value);

char* ALAKitGetAuthCode(ALAKit* handle, ALAKIT_AUTH_SOURCE source, const char* username, const char* password);

char* ALAKitAuthMachine(ALAKit* handle, const char* code);
char* ALAKitAuthMachineSTPortal(ALAKit* handle, const char* username, const char* password);
int ALAKitTestAuth(ALAKit* handle);

char* ALAKitGetLicStorePath(ALAKit* handle, ALAKIT_LIC_STORE store);
char* ALAKitGetLicense(ALAKit* handle, ALAKIT_LIC_STORE store, const char* activation_key, char** path);
ALAKIT_STATUS ALAKitStoreLicense(ALAKit* handle, ALAKIT_LIC_STORE store, const char* name, const char* license, int overwrite);
ALAKIT_STATUS ALAKitDeactivateLicense(ALAKit* handle, ALAKIT_LIC_STORE store, const char* activation_key);
char* ALAKitAutoActivateLicense(ALAKit* handle, ALAKIT_LIC_STORE store, const char* activation_key, int overwrite);
char* ALAKitManualActivateLicense(ALAKit* handle, ALAKIT_LIC_STORE store, const char* activation_key, ALM_HOSTID* hostids, int overwrite);
ALAKitLicense* ALAKitListActivatedLicenses(ALAKit* handle);
ALAKIT_STATUS ALAKitPing(ALAKit* handle);
const char* ALAKitGetCloudServiceName(ALAKIT_CLOUD_SERVICE service);

ALAKIT_STATUS ALAKitTestConnection(ALAKit* handle, ALAKIT_CLOUD_SERVICE service, ALAKIT_OUTPUT_OPTION output_type, const void* output);

#if defined __CPLUSPLUS__ || defined __cplusplus
}
#endif

#endif /* ALAKIT_H */
