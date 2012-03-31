.class public Lorg/jivesoftware/smackx/muc/Occupant;
.super Ljava/lang/Object;
.source "Occupant.java"


# instance fields
.field private final affiliation:Ljava/lang/String;

.field private final jid:Ljava/lang/String;

.field private final nick:Ljava/lang/String;

.field private final role:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 4
    .parameter "presence"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v2, "x"

    .line 54
    const-string v3, "http://jabber.org/protocol/muc#user"

    .line 53
    invoke-virtual {p1, v2, v3}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 55
    .local v1, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v0

    .line 56
    .local v0, item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getJid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->affiliation:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getRole()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->role:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Ljava/lang/String;

    .line 61
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getJid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->affiliation:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getRole()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->role:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getNick()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 65
    instance-of v1, p1, Lorg/jivesoftware/smackx/muc/Occupant;

    if-nez v1, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 68
    check-cast v0, Lorg/jivesoftware/smackx/muc/Occupant;

    .line 69
    .local v0, occupant:Lorg/jivesoftware/smackx/muc/Occupant;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Ljava/lang/String;

    iget-object v2, v0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAffiliation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->affiliation:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Occupant;->role:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/Occupant;->affiliation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 121
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->role:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 122
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/Occupant;->jid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 123
    mul-int/lit8 v2, v0, 0x11

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/Occupant;->nick:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 124
    return v0

    .line 123
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
