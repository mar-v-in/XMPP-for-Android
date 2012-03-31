.class public Lorg/jivesoftware/smackx/packet/MessageEvent;
.super Ljava/lang/Object;
.source "MessageEvent.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# static fields
.field public static final CANCELLED:Ljava/lang/String; = "cancelled"

.field public static final COMPOSING:Ljava/lang/String; = "composing"

.field public static final DELIVERED:Ljava/lang/String; = "delivered"

.field public static final DISPLAYED:Ljava/lang/String; = "displayed"

.field public static final OFFLINE:Ljava/lang/String; = "offline"


# instance fields
.field private cancelled:Z

.field private composing:Z

.field private delivered:Z

.field private displayed:Z

.field private offline:Z

.field private packetID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->offline:Z

    .line 72
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->delivered:Z

    .line 73
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->displayed:Z

    .line 74
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->composing:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->cancelled:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->packetID:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "x"

    return-object v0
.end method

.method public getEventTypes()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, allEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isDelivered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "delivered"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isMessageEventRequest()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "cancelled"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isComposing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const-string v1, "composing"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isDisplayed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const-string v1, "displayed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isOffline()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "jabber:x:event"

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->packetID:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->cancelled:Z

    return v0
.end method

.method public isComposing()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->composing:Z

    return v0
.end method

.method public isDelivered()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->delivered:Z

    return v0
.end method

.method public isDisplayed()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->displayed:Z

    return v0
.end method

.method public isMessageEventRequest()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->packetID:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->offline:Z

    return v0
.end method

.method public setCancelled(Z)V
    .locals 0
    .parameter "cancelled"

    .prologue
    .line 220
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->cancelled:Z

    .line 221
    return-void
.end method

.method public setComposing(Z)V
    .locals 1
    .parameter "composing"

    .prologue
    .line 235
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->composing:Z

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setCancelled(Z)V

    .line 237
    return-void
.end method

.method public setDelivered(Z)V
    .locals 1
    .parameter "delivered"

    .prologue
    .line 249
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->delivered:Z

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setCancelled(Z)V

    .line 251
    return-void
.end method

.method public setDisplayed(Z)V
    .locals 1
    .parameter "displayed"

    .prologue
    .line 263
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->displayed:Z

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setCancelled(Z)V

    .line 265
    return-void
.end method

.method public setOffline(Z)V
    .locals 1
    .parameter "offline"

    .prologue
    .line 278
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->offline:Z

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setCancelled(Z)V

    .line 280
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 0
    .parameter "packetID"

    .prologue
    .line 291
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MessageEvent;->packetID:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isOffline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isDelivered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "delivered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isDisplayed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "displayed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isComposing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "composing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getPacketID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 367
    const-string v1, "<id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_4
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
