.class final enum Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;
.super Ljava/lang/Enum;
.source "RTPBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BridgeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

.field public static final enum change:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

.field public static final enum create:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

.field public static final enum publicip:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    const-string v1, "create"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->create:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    const-string v1, "change"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->change:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    const-string v1, "publicip"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->publicip:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->create:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->change:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->publicip:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
