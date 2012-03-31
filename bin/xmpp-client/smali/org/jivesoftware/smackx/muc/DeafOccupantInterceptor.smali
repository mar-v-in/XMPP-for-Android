.class public Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor;
.super Ljava/lang/Object;
.source "DeafOccupantInterceptor.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 75
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 77
    .local v0, presence:Lorg/jivesoftware/smack/packet/Presence;
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 78
    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;-><init>(Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;)V

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Packet;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 83
    :cond_0
    return-void
.end method
