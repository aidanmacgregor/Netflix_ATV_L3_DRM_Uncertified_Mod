.class Lcom/netflix/ninja/EsnInquiryReceiver$1;
.super Ljava/lang/Object;
.source "EsnInquiryReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/ninja/EsnInquiryReceiver;->handleEsnInquiry(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/ninja/EsnInquiryReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/ninja/EsnInquiryReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/netflix/ninja/EsnInquiryReceiver$1;->this$0:Lcom/netflix/ninja/EsnInquiryReceiver;

    iput-object p2, p0, Lcom/netflix/ninja/EsnInquiryReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/netflix/ninja/EsnInquiryReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->getESN(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    .line 69
    .local v0, "esnProvider":Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    iget-object v2, p0, Lcom/netflix/ninja/EsnInquiryReceiver$1;->val$context:Landroid/content/Context;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/ninja/EsnInquiryReceiver;->access$000(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "esnProvider":Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "nf_input"

    const-string v3, "We failed to get ESN provider! This should NOT happen!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
