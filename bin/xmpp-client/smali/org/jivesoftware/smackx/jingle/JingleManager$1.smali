.class Lorg/jivesoftware/smackx/jingle/JingleManager$1;
.super Ljava/lang/Object;
.source "JingleManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/JingleManager;->setJingleServiceEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/jingle/JingleManager;->setServiceEnabled(Lorg/jivesoftware/smack/Connection;Z)V

    .line 257
    return-void
.end method
