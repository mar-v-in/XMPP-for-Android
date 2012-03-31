.class public Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;
.super Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;
.source "InvitationRequest.java"


# instance fields
.field private final inviter:Ljava/lang/String;

.field private final reason:Ljava/lang/String;

.field private final room:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "inviter"
    .parameter "room"
    .parameter "reason"

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;->inviter:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;->room:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;->reason:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getInviter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;->inviter:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;->room:Ljava/lang/String;

    return-object v0
.end method

.method isInvitation()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method isTransfer()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method isUserRequest()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
