.class public Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OfferConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;,
        Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$Provider;
    }
.end annotation


# instance fields
.field private sessionID:J

.field private userJID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<offer-confirmation xmlns=\"http://jabber.org/protocol/workgroup\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "</offer-confirmation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSessionID()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;->sessionID:J

    return-wide v0
.end method

.method public getUserJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;->userJID:Ljava/lang/String;

    return-object v0
.end method

.method public notifyService(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "con"
    .parameter "workgroup"
    .parameter "createdRoomName"

    .prologue
    .line 104
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;

    invoke-direct {v0, p0, p2, p3}, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, packet:Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 107
    return-void
.end method

.method public setSessionID(J)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 110
    iput-wide p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;->sessionID:J

    .line 111
    return-void
.end method

.method public setUserJID(Ljava/lang/String;)V
    .locals 0
    .parameter "userJID"

    .prologue
    .line 114
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;->userJID:Ljava/lang/String;

    .line 115
    return-void
.end method
