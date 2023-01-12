.class public final Lcom/netflix/mediaclient/repository/SecurityRepository;
.super Ljava/lang/Object;
.source "SecurityRepository.java"


# static fields
.field private static final BOOTLOADER_PARAMETER_CERTIFICATION_VERSION:Ljava/lang/String; = "certification_version"

.field private static final BOOTLOADER_PARAMETER_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final BOOTLOADER_PARAMETER_SDK_VERSION_VALUE:Ljava/lang/String; = "2014.1"

.field private static final BOOTLOADER_PARAMETER_SOFTWARE_VERSION:Ljava/lang/String; = "sw_version"

.field private static final ESN_DELIM:Ljava/lang/String; = "-"

.field private static final MODEL_DELIM:Ljava/lang/String; = "_"

.field public static final NCCP_VERSION:Ljava/lang/String; = "NCCP/3.0"

.field public static final SENDER_ID:Ljava/lang/String; = "66654874772"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getBootloaderParameterCertificationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "certification_version"

    return-object v0
.end method

.method public static getBootloaderParameterSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "sdk_version"

    return-object v0
.end method

.method public static getBootloaderParameterSdkVersionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "2014.1"

    return-object v0
.end method

.method public static getBootloaderParameterSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "sw_version"

    return-object v0
.end method

.method public static getDeviceIdToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "20MNetflix2010"

    return-object v0
.end method

.method public static getEsnDelim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "-"

    return-object v0
.end method

.method public static getEsnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "NFANDROID2-"

    return-object v0
.end method

.method public static getModelDelim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "_"

    return-object v0
.end method
