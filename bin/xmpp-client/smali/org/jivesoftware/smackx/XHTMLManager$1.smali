.class Lorg/jivesoftware/smackx/XHTMLManager$1;
.super Ljava/lang/Object;
.source "XHTMLManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/XHTMLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/XHTMLManager;->setServiceEnabled(Lorg/jivesoftware/smack/Connection;Z)V

    .line 51
    return-void
.end method
