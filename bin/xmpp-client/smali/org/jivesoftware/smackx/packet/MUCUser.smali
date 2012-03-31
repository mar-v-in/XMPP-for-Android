.class public Lorg/jivesoftware/smackx/packet/MUCUser;
.super Ljava/lang/Object;
.source "MUCUser.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/MUCUser$Decline;,
        Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;,
        Lorg/jivesoftware/smackx/packet/MUCUser$Invite;,
        Lorg/jivesoftware/smackx/packet/MUCUser$Item;,
        Lorg/jivesoftware/smackx/packet/MUCUser$Status;
    }
.end annotation


# instance fields
.field private decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

.field private destroy:Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

.field private invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

.field private item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;

.field private password:Ljava/lang/String;

.field private status:Lorg/jivesoftware/smackx/packet/MUCUser$Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    return-object v0
.end method

.method public getDestroy()Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->destroy:Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    const-string v0, "x"

    return-object v0
.end method

.method public getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    return-object v0
.end method

.method public getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const-string v0, "http://jabber.org/protocol/muc#user"

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->status:Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    return-object v0
.end method

.method public setDecline(Lorg/jivesoftware/smackx/packet/MUCUser$Decline;)V
    .locals 0
    .parameter "decline"

    .prologue
    .line 600
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    .line 601
    return-void
.end method

.method public setDestroy(Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;)V
    .locals 0
    .parameter "destroy"

    .prologue
    .line 613
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->destroy:Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    .line 614
    return-void
.end method

.method public setInvite(Lorg/jivesoftware/smackx/packet/MUCUser$Invite;)V
    .locals 0
    .parameter "invite"

    .prologue
    .line 625
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    .line 626
    return-void
.end method

.method public setItem(Lorg/jivesoftware/smackx/packet/MUCUser$Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 637
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    .line 638
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 649
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->password:Ljava/lang/String;

    .line 650
    return-void
.end method

.method public setStatus(Lorg/jivesoftware/smackx/packet/MUCUser$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 661
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCUser;->status:Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    .line 662
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 668
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 673
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 676
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 679
    const-string v1, "<password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 680
    const-string v2, "</password>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 683
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Status;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDestroy()Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 686
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDestroy()Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_5
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
