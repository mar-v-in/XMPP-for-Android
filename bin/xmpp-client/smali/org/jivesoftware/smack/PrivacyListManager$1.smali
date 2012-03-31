.class Lorg/jivesoftware/smack/PrivacyListManager$1;
.super Ljava/lang/Object;
.source "PrivacyListManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PrivacyListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 73
    new-instance v0, Lorg/jivesoftware/smack/PrivacyListManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smack/PrivacyListManager;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/PrivacyListManager;)V

    .line 74
    return-void
.end method
