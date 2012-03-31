.class Lorg/jivesoftware/smackx/jingle/nat/STUNTransportManager$1;
.super Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;
.source "STUNTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/STUNTransportManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/nat/STUNTransportManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/STUNTransportManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNTransportManager$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/STUNTransportManager;

    .line 35
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;-><init>()V

    return-void
.end method
