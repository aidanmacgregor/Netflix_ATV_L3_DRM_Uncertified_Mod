.class public interface abstract Lcom/netflix/mediaclient/android/app/CommonStatus;
.super Ljava/lang/Object;
.source "CommonStatus.java"


# static fields
.field public static final ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final CONFIG_DEVICE_NOT_PERMITTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final HTTP_SSL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NETWORK_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NOT_IMPLEMENTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NOT_IN_QUEUE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NOT_VALID:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final SERVICE_DISCONNECTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_IMPLEMENTED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_IMPLEMENTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_VALID:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DEVICE_NOT_PERMITTED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->CONFIG_DEVICE_NOT_PERMITTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->SERVICE_DISCONNECTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NETWORK_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-void
.end method
