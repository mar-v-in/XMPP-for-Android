.class public Lorg/jivesoftware/smackx/jingle/nat/STUN$StunServerAddress;
.super Ljava/lang/Object;
.source "STUN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/STUN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StunServerAddress"
.end annotation


# instance fields
.field private final port:Ljava/lang/String;

.field private final server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "server"
    .parameter "port"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUN$StunServerAddress;->server:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/STUN$StunServerAddress;->port:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUN$StunServerAddress;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUN$StunServerAddress;->server:Ljava/lang/String;

    return-object v0
.end method
