.class public Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
.super Ljava/lang/Object;
.source "MUCOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/MUCOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private actor:Ljava/lang/String;

.field private final affiliation:Ljava/lang/String;

.field private jid:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private role:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "affiliation"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->affiliation:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public getActor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->actor:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->affiliation:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->role:Ljava/lang/String;

    return-object v0
.end method

.method public setActor(Ljava/lang/String;)V
    .locals 0
    .parameter "actor"

    .prologue
    .line 215
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->actor:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 227
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->jid:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter "nick"

    .prologue
    .line 240
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->nick:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 252
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->reason:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .parameter "role"

    .prologue
    .line 265
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->role:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, " affiliation=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getJid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    const-string v1, " jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getNick()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 279
    const-string v1, " nick=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getRole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 282
    const-string v1, " role=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getActor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 285
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 287
    :cond_4
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 289
    const-string v1, "<reason>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    const-string v2, "</reason>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getActor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 293
    const-string v1, "<actor jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getActor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_6
    const-string v1, "</item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
