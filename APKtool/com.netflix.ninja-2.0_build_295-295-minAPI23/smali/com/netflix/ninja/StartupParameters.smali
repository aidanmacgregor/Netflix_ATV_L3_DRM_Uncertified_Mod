.class public interface abstract Lcom/netflix/ninja/StartupParameters;
.super Ljava/lang/Object;
.source "StartupParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/ninja/StartupParameters$SourceType;
    }
.end annotation


# static fields
.field public static final SOURCE_TYPE:Ljava/lang/String; = "source_type"

.field public static final TAG:Ljava/lang/String; = "netflix-activity"


# virtual methods
.method public abstract getSourceType()Lcom/netflix/ninja/StartupParameters$SourceType;
.end method

.method public abstract getStartupParameters()Ljava/lang/String;
.end method
