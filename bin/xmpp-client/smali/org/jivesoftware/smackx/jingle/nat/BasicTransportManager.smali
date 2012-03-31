.class public Lorg/jivesoftware/smackx/jingle/nat/BasicTransportManager;
.super Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;
.source "BasicTransportManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected createResolver(Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
    .locals 1
    .parameter "session"

    .prologue
    .line 33
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;-><init>()V

    return-object v0
.end method
