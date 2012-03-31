.class public Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
.super Ljava/lang/Object;
.source "MUCAdmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/MUCAdmin;
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

.field private final role:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "affiliation"
    .parameter "role"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->affiliation:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->role:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getActor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->actor:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->affiliation:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->role:Ljava/lang/String;

    return-object v0
.end method

.method public setActor(Ljava/lang/String;)V
    .locals 0
    .parameter "actor"

    .prologue
    .line 146
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->actor:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 158
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->jid:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter "nick"

    .prologue
    .line 171
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->nick:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 183
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->reason:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, " affiliation=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getJid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    const-string v1, " jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getNick()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 197
    const-string v1, " nick=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getRole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 200
    const-string v1, " role=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getActor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 203
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 205
    :cond_4
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 207
    const-string v1, "<reason>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string v2, "</reason>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getActor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 211
    const-string v1, "<actor jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getActor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_6
    const-string v1, "</item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
