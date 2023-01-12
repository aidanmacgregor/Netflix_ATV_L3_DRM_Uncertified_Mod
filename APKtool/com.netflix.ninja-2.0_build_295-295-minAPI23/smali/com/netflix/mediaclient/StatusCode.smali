.class public final enum Lcom/netflix/mediaclient/StatusCode;
.super Ljava/lang/Enum;
.source "StatusCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/StatusCode;

.field public static final enum ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum BROWSE_AGENT_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum BROWSE_CW_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum BROWSE_IQ_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum CONFIG_DEVICE_NOT_PERMITTED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum CONFIG_REFRESH_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum FALCOR_RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MISSING_ID_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NOT_IMPLEMENTED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_INVALID_SW_VERSION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_1:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_10:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_11:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_12:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_3:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_5:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_6:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_7:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_9:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ONGOING:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_REGISTRATION_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum OK:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum SERVER_ERROR_MAP_CACHE_MISS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum SET_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_FB_CONNECT_FAILURE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_FB_CONNECT_ID_ALREADY_IN_USE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_FB_CONNECT_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_FB_CONNECT_MISSING_PARAMS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_FB_CONNECT_RETRY_AFTER_FB_SMS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_FB_TRANSIENT_DO_NOT_RETRY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_FB_TRANSIENT_RETRY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x2

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_ERROR"

    const/4 v2, 0x3

    const/4 v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "OBSOLETE_APP_VERSION"

    const/4 v2, 0x4

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "SET_FAILED"

    const/4 v2, 0x5

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->SET_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "CONFIG_REFRESH_FAILED"

    const/4 v2, 0x6

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->CONFIG_REFRESH_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "FORCED_TESTING_ERROR"

    const/4 v2, 0x7

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "INIT_SERVICE_TIMEOUT"

    const/16 v2, 0x8

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x9

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NOT_IMPLEMENTED:Lcom/netflix/mediaclient/StatusCode;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NO_CONNECTIVITY"

    const/16 v2, -0xb

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "CONFIG_DOWNLOAD_FAILED"

    const/16 v2, -0xc

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "CONFIG_DEVICE_NOT_PERMITTED"

    const/16 v2, -0xd

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DEVICE_NOT_PERMITTED:Lcom/netflix/mediaclient/StatusCode;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_INVALID_SW_VERSION"

    const/16 v2, 0xd

    const/16 v3, -0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_INVALID_SW_VERSION:Lcom/netflix/mediaclient/StatusCode;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ONGOING"

    const/16 v2, 0xe

    const/16 v3, -0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ONGOING:Lcom/netflix/mediaclient/StatusCode;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_REGISTRATION_EXISTS"

    const/16 v2, 0xf

    const/16 v3, -0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_REGISTRATION_INVALID_CREDENTIALS"

    const/16 v2, 0x10

    const/16 v3, -0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "USER_FB_CONNECT_MISSING_PARAMS"

    const/16 v2, 0x11

    const/16 v3, -0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_MISSING_PARAMS:Lcom/netflix/mediaclient/StatusCode;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "USER_FB_CONNECT_INVALID_CREDENTIALS"

    const/16 v2, 0x12

    const/16 v3, -0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "USER_FB_CONNECT_ID_ALREADY_IN_USE"

    const/16 v2, 0x13

    const/16 v3, -0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_ID_ALREADY_IN_USE:Lcom/netflix/mediaclient/StatusCode;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "USER_FB_CONNECT_RETRY_AFTER_FB_SMS"

    const/16 v2, 0x14

    const/16 v3, -0x35

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_RETRY_AFTER_FB_SMS:Lcom/netflix/mediaclient/StatusCode;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "USER_FB_TRANSIENT_DO_NOT_RETRY"

    const/16 v2, 0x15

    const/16 v3, -0x36

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_FB_TRANSIENT_DO_NOT_RETRY:Lcom/netflix/mediaclient/StatusCode;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "USER_FB_TRANSIENT_RETRY"

    const/16 v2, 0x16

    const/16 v3, -0x37

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_FB_TRANSIENT_RETRY:Lcom/netflix/mediaclient/StatusCode;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "USER_FB_CONNECT_FAILURE"

    const/16 v2, 0x17

    const/16 v3, -0x38

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "WRONG_PATH"

    const/16 v2, 0x18

    const/16 v3, -0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "USER_NOT_AUTHORIZED"

    const/16 v2, 0x19

    const/16 v3, -0x3d

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0x1a

    const/16 v3, -0x3e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "MISSING_ID_IN_CACHE"

    const/16 v2, 0x1b

    const/16 v3, -0x3f

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MISSING_ID_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "SERVER_ERROR_MAP_CACHE_MISS"

    const/16 v2, 0x1c

    const/16 v3, -0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR_MAP_CACHE_MISS:Lcom/netflix/mediaclient/StatusCode;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "MAP_ERROR"

    const/16 v2, 0x1d

    const/16 v3, -0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "BROWSE_AGENT_WRONG_STATE"

    const/16 v2, 0x1e

    const/16 v3, -0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->BROWSE_AGENT_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "BROWSE_IQ_WRONG_STATE"

    const/16 v2, 0x1f

    const/16 v3, -0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->BROWSE_IQ_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "BROWSE_CW_WRONG_STATE"

    const/16 v2, 0x20

    const/16 v3, -0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->BROWSE_CW_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DELETED_PROFILE"

    const/16 v2, 0x21

    const/16 v3, -0x45

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "FALCOR_RESPONSE_PARSE_ERROR"

    const/16 v2, 0x22

    const/16 v3, -0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->FALCOR_RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_CDM"

    const/16 v2, 0x23

    const/16 v3, -0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED"

    const/16 v2, 0x24

    const/16 v3, -0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/StatusCode;

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED"

    const/16 v2, 0x25

    const/16 v3, -0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_MEDIADRM_SIGN"

    const/16 v2, 0x26

    const/16 v3, -0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_MEDIADRM_VERIFY"

    const/16 v2, 0x27

    const/16 v3, -0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_MEDIADRM_DECRYPT"

    const/16 v2, 0x28

    const/16 v3, -0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_MEDIADRM_ENCRYPT"

    const/16 v2, 0x29

    const/16 v3, -0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST"

    const/16 v2, 0x2a

    const/16 v3, -0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE"

    const/16 v2, 0x2b

    const/16 v3, -0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "HTTP_SSL_ERROR"

    const/16 v2, 0x2c

    const/16 v3, -0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "HTTP_SSL_DATE_TIME_ERROR"

    const/16 v2, 0x2d

    const/16 v3, -0x79

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "HTTP_SSL_NO_VALID_CERT"

    const/16 v2, 0x2e

    const/16 v3, -0x7a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_1"

    const/16 v2, 0x2f

    const/16 v3, -0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_1:Lcom/netflix/mediaclient/StatusCode;

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_2"

    const/16 v2, 0x30

    const/16 v3, -0xc9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_3"

    const/16 v2, 0x31

    const/16 v3, -0xca

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_3:Lcom/netflix/mediaclient/StatusCode;

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_4"

    const/16 v2, 0x32

    const/16 v3, -0xcb

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_5"

    const/16 v2, 0x33

    const/16 v3, -0xcc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_5:Lcom/netflix/mediaclient/StatusCode;

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_6"

    const/16 v2, 0x34

    const/16 v3, -0xcd

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_6:Lcom/netflix/mediaclient/StatusCode;

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_7"

    const/16 v2, 0x35

    const/16 v3, -0xce

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_7:Lcom/netflix/mediaclient/StatusCode;

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_8"

    const/16 v2, 0x36

    const/16 v3, -0xcf

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_9"

    const/16 v2, 0x37

    const/16 v3, -0xd0

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_9:Lcom/netflix/mediaclient/StatusCode;

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_10"

    const/16 v2, 0x38

    const/16 v3, -0xd1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_10:Lcom/netflix/mediaclient/StatusCode;

    .line 85
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_11"

    const/16 v2, 0x39

    const/16 v3, -0xd2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_11:Lcom/netflix/mediaclient/StatusCode;

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NRD_LOGIN_ACTIONID_12"

    const/16 v2, 0x3a

    const/16 v3, -0xd3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_12:Lcom/netflix/mediaclient/StatusCode;

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "RESPONSE_PARSE_ERROR"

    const/16 v2, 0x3b

    const/16 v3, -0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 92
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "OK"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2, v4}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NON_RECOMMENDED_APP_VERSION"

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v2, v5}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "ALREADY_IN_QUEUE"

    const/16 v2, 0x3e

    invoke-direct {v0, v1, v2, v6}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    .line 98
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NOT_IN_QUEUE"

    const/16 v2, 0x3f

    invoke-direct {v0, v1, v2, v7}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "NOT_VALID"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v8}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    .line 11
    const/16 v0, 0x41

    new-array v0, v0, [Lcom/netflix/mediaclient/StatusCode;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->SET_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->CONFIG_REFRESH_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NOT_IMPLEMENTED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DEVICE_NOT_PERMITTED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v8

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_INVALID_SW_VERSION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ONGOING:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_MISSING_PARAMS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_ID_ALREADY_IN_USE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_RETRY_AFTER_FB_SMS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_FB_TRANSIENT_DO_NOT_RETRY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_FB_TRANSIENT_RETRY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_FB_CONNECT_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MISSING_ID_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR_MAP_CACHE_MISS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->BROWSE_AGENT_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->BROWSE_IQ_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->BROWSE_CW_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->FALCOR_RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_1:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_3:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_5:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_6:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_7:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_9:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_10:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_11:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_12:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->$VALUES:[Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    .line 105
    return-void
.end method

.method public static getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 138
    invoke-static {}, Lcom/netflix/mediaclient/StatusCode;->values()[Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .local v0, "arr$":[Lcom/netflix/mediaclient/StatusCode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 139
    .local v3, "s":Lcom/netflix/mediaclient/StatusCode;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 144
    .end local v3    # "s":Lcom/netflix/mediaclient/StatusCode;
    :goto_1
    return-object v3

    .line 138
    .restart local v3    # "s":Lcom/netflix/mediaclient/StatusCode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "s":Lcom/netflix/mediaclient/StatusCode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isSucess(I)Z
    .locals 1
    .param p0, "statusCode"    # I

    .prologue
    .line 125
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/StatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/netflix/mediaclient/StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->$VALUES:[Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSucess()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusCode: [ code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
