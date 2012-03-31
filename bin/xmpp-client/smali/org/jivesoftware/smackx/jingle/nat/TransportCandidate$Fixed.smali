.class public Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
.source "TransportCandidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fixed"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;-><init>()V

    .line 444
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 455
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;-><init>(Ljava/lang/String;I)V

    .line 456
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "ip"
    .parameter "port"
    .parameter "generation"

    .prologue
    .line 469
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;-><init>(Ljava/lang/String;II)V

    .line 470
    return-void
.end method
