.class Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 151
    :try_start_0
    new-instance v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method
