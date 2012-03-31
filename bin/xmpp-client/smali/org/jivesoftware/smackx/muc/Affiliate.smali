.class public Lorg/jivesoftware/smackx/muc/Affiliate;
.super Ljava/lang/Object;
.source "Affiliate.java"


# instance fields
.field private final affiliation:Ljava/lang/String;

.field private final jid:Ljava/lang/String;

.field private final nick:Ljava/lang/String;

.field private final role:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getJid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->jid:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->affiliation:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getRole()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->role:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->getNick()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->nick:Ljava/lang/String;

    .line 49
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smackx/packet/MUCOwner$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getJid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->jid:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->affiliation:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getRole()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->role:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->getNick()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->nick:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getAffiliation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->affiliation:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/Affiliate;->role:Ljava/lang/String;

    return-object v0
.end method
