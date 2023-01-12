.class public Lcom/netflix/mediaclient/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HOURS_PER_DAY:I = 0x18

.field public static final MILLISECONDS_PER_HOUR:I = 0x36ee80

.field public static final MILLISECONDS_PER_MINUTE:I = 0xea60

.field public static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field public static final MINUTES_PER_HOUR:I = 0x3c

.field public static final SECONDS_PER_DAY:I = 0x15180

.field public static final SECONDS_PER_HOUR:I = 0xe10

.field public static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertSecondsToMinutes(I)I
    .locals 2
    .param p0, "seconds"    # I

    .prologue
    .line 19
    int-to-float v0, p0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
