.class Lorg/jivesoftware/smack/ReconnectionManager$1;
.super Ljava/lang/Object;
.source "ReconnectionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/ReconnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 45
    .line 46
    new-instance v0, Lorg/jivesoftware/smack/ReconnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smack/ReconnectionManager;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/ReconnectionManager;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 48
    return-void
.end method
