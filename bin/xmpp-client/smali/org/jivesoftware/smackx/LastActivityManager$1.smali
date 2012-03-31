.class Lorg/jivesoftware/smackx/LastActivityManager$1;
.super Ljava/lang/Object;
.source "LastActivityManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/LastActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 136
    new-instance v0, Lorg/jivesoftware/smackx/LastActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smackx/LastActivityManager;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/LastActivityManager;)V

    .line 137
    return-void
.end method
