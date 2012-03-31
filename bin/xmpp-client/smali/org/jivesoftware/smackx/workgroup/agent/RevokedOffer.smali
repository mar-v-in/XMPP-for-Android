.class public Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;
.super Ljava/lang/Object;
.source "RevokedOffer.java"


# instance fields
.field private final reason:Ljava/lang/String;

.field private final sessionID:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;

.field private final userID:Ljava/lang/String;

.field private final userJID:Ljava/lang/String;

.field private final workgroupName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "userJID"
    .parameter "userID"
    .parameter "workgroupName"
    .parameter "sessionID"
    .parameter "reason"
    .parameter "timestamp"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->userJID:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->userID:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->workgroupName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->sessionID:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->reason:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->timestamp:Ljava/util/Date;

    .line 66
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->userJID:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkgroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;->workgroupName:Ljava/lang/String;

    return-object v0
.end method
