.class public final enum Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
.super Ljava/lang/Enum;
.source "ICECandidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

.field public static final enum host:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

.field public static final enum local:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

.field public static final enum prflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

.field public static final enum relay:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

.field public static final enum srflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    const-string v1, "relay"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->relay:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    const-string v1, "srflx"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->srflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    const-string v1, "prflx"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->prflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    const-string v1, "local"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->local:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    const-string v1, "host"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->host:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->relay:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->srflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->prflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->local:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->host:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
