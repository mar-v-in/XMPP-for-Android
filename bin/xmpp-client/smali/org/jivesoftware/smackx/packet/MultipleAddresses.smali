.class public Lorg/jivesoftware/smackx/packet/MultipleAddresses;
.super Ljava/lang/Object;
.source "MultipleAddresses.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;
    }
.end annotation


# static fields
.field public static final BCC:Ljava/lang/String; = "bcc"

.field public static final CC:Ljava/lang/String; = "cc"

.field public static final NO_REPLY:Ljava/lang/String; = "noreply"

.field public static final REPLY_ROOM:Ljava/lang/String; = "replyroom"

.field public static final REPLY_TO:Ljava/lang/String; = "replyto"

.field public static final TO:Ljava/lang/String; = "to"


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addresses:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "jid"
    .parameter "node"
    .parameter "desc"
    .parameter "delivered"
    .parameter "uri"

    .prologue
    .line 154
    new-instance v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;)V

    .line 155
    .local v0, address:Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;
    #calls: Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setJid(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->access$1(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Ljava/lang/String;)V

    .line 156
    #calls: Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setNode(Ljava/lang/String;)V
    invoke-static {v0, p3}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->access$2(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Ljava/lang/String;)V

    .line 157
    #calls: Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setDescription(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->access$3(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Ljava/lang/String;)V

    .line 158
    #calls: Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setDelivered(Z)V
    invoke-static {v0, p5}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->access$4(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Z)V

    .line 159
    #calls: Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setUri(Ljava/lang/String;)V
    invoke-static {v0, p6}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->access$5(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public getAddressesOfType(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v1, answer:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;>;"
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    return-object v1

    .line 175
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    .line 176
    .local v0, address:Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "addresses"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "http://jabber.org/protocol/address"

    return-object v0
.end method

.method public setNoReply()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    const-string v1, "noreply"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;)V

    .line 201
    .local v0, address:Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v3, " xmlns=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    const-string v3, "</"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 211
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    .line 212
    .local v0, address:Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;
    #calls: Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->toXML()Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->access$6(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
