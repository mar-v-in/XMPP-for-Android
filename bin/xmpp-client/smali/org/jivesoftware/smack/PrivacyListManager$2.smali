.class Lorg/jivesoftware/smack/PrivacyListManager$2;
.super Ljava/lang/Object;
.source "PrivacyListManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/PrivacyListManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PrivacyListManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/PrivacyListManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/PrivacyListManager$2;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 2

    .prologue
    .line 368
    invoke-static {}, Lorg/jivesoftware/smack/PrivacyListManager;->access$1()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager$2;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    #getter for: Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v1}, Lorg/jivesoftware/smack/PrivacyListManager;->access$2(Lorg/jivesoftware/smack/PrivacyListManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 374
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 379
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 384
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method
