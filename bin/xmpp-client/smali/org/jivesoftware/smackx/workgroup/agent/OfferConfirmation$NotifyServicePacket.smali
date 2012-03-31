.class Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OfferConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyServicePacket"
.end annotation


# instance fields
.field roomName:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "workgroup"
    .parameter "roomName"

    .prologue
    .line 34
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 35
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;->setTo(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 38
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;->roomName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<offer-confirmation  roomname=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferConfirmation$NotifyServicePacket;->roomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    const-string v1, "\" xmlns=\"http://jabber.org/protocol/workgroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
