.class public Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;
.super Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;
.source "UserRequest.java"


# static fields
.field private static instance:Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;->instance:Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;->instance:Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;

    return-object v0
.end method


# virtual methods
.method isInvitation()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method isTransfer()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method isUserRequest()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
