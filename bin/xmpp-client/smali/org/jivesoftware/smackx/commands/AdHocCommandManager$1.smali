.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$1;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 123
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V

    .line 124
    return-void
.end method
